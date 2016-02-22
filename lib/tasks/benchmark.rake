require 'benchmark'
require 'rest-client'

namespace :benchmark do
  desc "Compare performance of the Pricing Service for making RPC calls via AMQP vs HTTP"

  task :pricing_service, [:num_of_requests] => [:environment] do |_t, args|
    num_of_requests = args[:num_of_requests].to_i || 100
    requests = []

    num_of_requests.times do
      requests << { id: rand(1..99), status: ["premium", "standard"].shuffle.first }
    end

    puts "Benchmarking #{num_of_requests} requests"
    Benchmark.bm(12) do |bm|
      pc = PriceClient.new
      pc.start
      bm.report('amqp') do
        requests.each do |d|
          res = pc.create(d)
          verify_result("AMQP", d, res)
        end
      end
      pc.channel.close

      bm.report('http') do
        requests.each do |d|
          json = RestClient.post("http://localhost:9292/price_quote", d.to_json, content_type: :json, accept: :json)
          res = JSON.parse(json).with_indifferent_access
          verify_result("HTTP", d, res)
        end
      end

      threads = []
      bm.report('http threaded') do
        requests.each do |d|
          threads << Thread.new do
            json = RestClient.post("http://localhost:9292/price_quote", d.to_json, content_type: :json, accept: :json)
            res = JSON.parse(json).with_indifferent_access
            verify_result("HTTP Threaded", d, res)
          end
        end
        threads.each(&:join)
      end
    end
  end

  # For testing purposes, verify the result meeets expectations.
  def verify_result(protocol, request, result)
    expected_price = result[:standard_price]

    if request[:status] == "premium"
      expected_price = result[:standard_price] * 0.9
    end

    if result[:calculated_price] != expected_price
      puts "{protocol} expected: #{expected_price} | result: #{result} | request: #{request}"
    end
  end
end
