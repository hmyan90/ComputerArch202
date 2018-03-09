#!/bin/bash

docker run --privileged hmyan19901001/cython perf stat python /home/test.py "$1" "$2"
