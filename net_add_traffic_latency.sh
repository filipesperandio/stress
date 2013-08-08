#!/usr/bin/env sh


[[ ! ${1} ]] && echo "Usage: ${0} 500ms" && exit -1 

tc qdisc del dev eth0 root
tc qdisc add dev eth0 root netem delay ${1}

