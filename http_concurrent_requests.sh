#!/usr/bin/env sh

http_load() {
  while true;
  do
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    curl -s http://10.27.12.232:9002/operations > /dev/null &
    sleep 1
  done
}

http_load 

