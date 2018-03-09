#!/bin/bash 

ts=`date +%s`; curl -X POST -d "[{\"metric\": \"testmetric\", \"endpoint\": \"172-16-30-119\", \"timestamp\": $ts, \"step\": 60,\"value\": 9,\"counterType\": \"GAUGE\",\"tags\": \"project=falcon,module=webapp\"}]" http://192.168.6.145:1988/v1/push
