#!/usr/bin/env sh

http_load() {
  while true;
  do
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    curl -s http://10.27.12.232:9002/operations &
    sleep 1
  done
}

http_load &
pid=$!
echo "press enter to abort"
read
killall $pid

