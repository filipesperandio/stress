#!/usr/bin/env sh

kill_process() {
  kill -9 $cpu_pid
  kill -9 $concurrent_request_pid
  kill -9 $io_pid
  kill -9 $latency_pid
  ./net_flush_traffic_shape.sh
}


./cpu_intensive.rb &
cpu_pid=$!

./http_concurrent_requests.sh &
concurrent_request_pid=$!

./io_intensive.sh &
io_pid=$!

./net_add_traffic_latency.sh 500ms &
latency_pid=$!

echo "press enter to abort"
read
kill_process

