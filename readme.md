# Simple online store for testing services via AMQP vs HTTP
The pricing information for the store is delegated to a remote [pricing service](https://github.com/shamil614/online_store_pricing_service).
Requests are sent to the service via AMQP or HTTP.
    
## Install
1. Make sure to follow install instructions for the [pricing service](https://github.com/shamil614/online_store_pricing_service)
2. Clone the repo: `git clone https://github.com/shamil614/online_store.git`
3. Install gems via bundler. `bundle`


## Comparing AMQP vs HTTP
A rake task that runs a benchmark between the two can be found in `lib/tasks`.
Run the task via `bundle exec rake benchmark:pricing_service[10]`. The number in brackets, 10, is the number of overall requests to send to the pricing service.
    
