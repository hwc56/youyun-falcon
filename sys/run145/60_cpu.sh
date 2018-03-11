#!/bin/bash 

cpu_core=`lscpu | grep "Core(s)"|awk '{print$4}'`

echo $cpu_core
cpu_thread=`lscpu | grep "Thread(s)"|awk '{print$4}'`

echo $cpu_thread

ts=`date +%s`; curl -X POST -d "[{\"metric\": \"cpu.core\", \"endpoint\": \"172-16-30-119\", \"timestamp\": $ts, \"step\": 60,\"value\": $cpu_core,\"counterType\": \"GAUGE\",\"tags\": \"project=falcon,module=webapp\"},{\"metric\": \"cpu.thread\", \"endpoint\": \"172-16-30-119\", \"timestamp\": $ts, \"step\": 60,\"value\": $cpu_thread,\"counterType\": \"GAUGE\",\"tags\": \"project=falcon,module=webapp\"}]" http://192.168.6.145:1988/v1/push