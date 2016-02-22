CarrotRpc.configure do |config|
  # Required on the client to connect to RabbitMQ.
  # Bunny defaults to connecting to localhost or ENV['RABBITMQ_URL'] when defined. See Bunny docs.
  config.bunny = Bunny.new.start
  # Set the log level. Ruby Logger Docs http://ruby-doc.org/stdlib-2.2.0/libdoc/logger/rdoc/Logger.html
  config.loglevel = Logger::INFO
  # Create a new logger or use the Rails logger. 
  # When using Rails, use a tagged log to make it easier to track RPC.
  config.logger = CarrotRpc::TaggedLog.new(logger: Rails.logger, tags: ["Carrot RPC Client"])

  # Don't use. Server implementation only. The values below are set via CLI:
  # config.pidfile = nil
  # config.runloop_sleep = 0
  # config.logfile = nil
end
