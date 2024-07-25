#!/bin/bash

# set path
ROOT_DIRPATH="/home/akiyama/work/src/uPIMulator/golang/uPIMulator"
BIN_DIRPATH="/home/akiyama/work/src/uPIMulator/golang/uPIMulator/bin"

# set benchmark type and parameter
VERBOSE=1
BENCHMARK="LOOP"
NUM_CHANNELS=1
NUM_RANKS_PER_CHANNEL=1
NUM_DPUS_PER_RANK=1
NUM_TASKLETS=1

rm -rf "${BIN_DIRPATH}"
mkdir "${BIN_DIRPATH}"

# execute uPIMulator
./build/uPIMulator --verbose $VERBOSE \
                   --root_dirpath $ROOT_DIRPATH \
                   --bin_dirpath $BIN_DIRPATH \
                   --benchmark $BENCHMARK \
                   --num_channels $NUM_CHANNELS \
                   --num_ranks_per_channel $NUM_RANKS_PER_CHANNEL \
                   --num_dpus_per_rank $NUM_DPUS_PER_RANK \
                   --num_tasklets $NUM_TASKLETS > ./trace.txt
