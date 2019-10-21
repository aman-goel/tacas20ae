#!/bin/bash -x
# Make sure we exit if there is a failure
set -e

# Build and install yosys
pushd .
git clone --depth=50 https://github.com/YosysHQ/yosys.git
cd yosys
make
sudo make install
popd

# Build and install z3
pushd .
# z3 4.8.6 release
Z3_VERSION=78ed71b8de7d4d089f2799bf2d06f411ac6b9062
git clone https://github.com/Z3Prover/z3.git
cd z3
git checkout -f $Z3_VERSION
python scripts/mk_make.py
cd build
make
sudo make install
popd

# Build and install Yices 2
pushd .
git clone --depth=50 https://github.com/SRI-CSL/yices2.git
cd yices2
autoconf
./configure
make
sudo make install
popd
