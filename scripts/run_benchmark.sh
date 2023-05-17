#!/bin/bash

datetime=$(date +'%s')
outputfile=/nora/benchmark/benchmark-$datetime.csv

DEBUG_DEFAULT=false
DEBUGGING=${DEBUG:-$DEBUG_DEFAULT}

# Check if DEBUGGING is not false
if [ "$DEBUGGING" != false ]; then
  /nora/build/benchmark --benchmark_out=$outputfile --benchmark_out_format=csv
else 
  /nora/build/benchmark --benchmark_out=$outputfile --benchmark_out_format=csv 2>&1 >/dev/null
fi
