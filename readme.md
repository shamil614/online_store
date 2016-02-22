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

### Sample Benchmarks from a Macbook Pro


```
online_store $ rake benchmark:pricing_service[1]
Benchmarking 1 requests
                   user     system      total        real
amqp           0.000000   0.000000   0.000000 (  0.001804)
http           0.010000   0.000000   0.010000 (  0.015010)
http threaded  0.010000   0.000000   0.010000 (  0.014114)
```

```
online_store $ rake benchmark:pricing_service[100]
Benchmarking 100 requests
                   user     system      total        real
amqp           0.040000   0.010000   0.050000 (  0.159281)
http           1.120000   0.060000   1.180000 (  1.469805)
http threaded  1.250000   0.110000   1.360000 (  1.344046)
```

```
online_store $ rake benchmark:pricing_service[1000]
Benchmarking 1000 requests
                   user     system      total        real
amqp           0.350000   0.050000   0.400000 (  1.100244)
http          12.630000   0.480000  13.110000 ( 15.399536)
http threaded 12.380000   1.250000  13.630000 ( 13.784904)
```
    
