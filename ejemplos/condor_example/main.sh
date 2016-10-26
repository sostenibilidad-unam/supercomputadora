#!/bin/bash

echo "job running in host: "
echo `hostname`
echo "job starting"
for n in {1..100} ; do cat /proc/loadavg ; sleep 2 ; done
echo "job ended"
