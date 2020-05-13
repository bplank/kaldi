#!/bin/bash
# bp
#
# compile kaldi
NUM_CPU=16
cd tools
extras/check_dependencies.sh
make -j $NUM_CPU
cd ..
## make sure to use g++-6 not newer
cd src
CXX=g++-6 ./configure --shared
make -j clean depend; make -j $NUM_CPU
