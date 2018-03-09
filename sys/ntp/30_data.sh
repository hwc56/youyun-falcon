#!/bin/bash 

ts=`date +%s`; curl -X POST -d "[{\"metric\": \"testmetricme.second\", \"endpoint\": \"testhost\", \"timestamp\": $ts, \"step\": 60,\"value\": 20,\"counterType\": \"GAUGE\",\"tags\": \"project=falcon,module=webapp\"}]" http://192.168.6.145:1988/v1/push
