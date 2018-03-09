#!/bin/bash

#display_help() {
#  echo ""

#}

docker run --privileged hyan90 perf stat python /home/test.py "$1" "$2"

