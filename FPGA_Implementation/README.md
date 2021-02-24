# FPGA Implementation of MYTH Core

This section of the repository contains all files needed to implement the core on FPGA.

## Steps to run MYTH Core on FPGA

The FPGA board I have used here is [Zedboard](http://zedboard.org/product/zedboard). So, change the [constraints.xdc](FPGA_Implementation/constraints.xdc) file according to board you have.

1. Clone the repository using `git clone https://github.com/shivanishah269/risc-v-core.git`.
2. `cd FPGA_Implementation`
3. `./run.sh`
