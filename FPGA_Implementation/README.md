# FPGA Implementation of MYTH Core using TL-Verilog

This section of the repository contains all files needed to implement the core on FPGA.

## Overview of [SandPiper](https://www.redwoodeda.com/products)
* SandPiper is a code generator that generates readable, well-structured, Verilog or SystemVerilog code from the given TL-Verilog code.
* [SandPiper SaaS Edition](https://www.redwoodeda.com/sandpiper-saas) runs as a microservice in the cloud to support easy open-source development. No installation is required. 
* To run locally, SandPiper Education Edition can be requested from [RedwoodEDA](https://www.redwoodeda.com/products)

## Steps to run MYTH Core on FPGA

The FPGA board I have used here is [Zedboard](http://zedboard.org/product/zedboard). So, change the [`constraints.xdc`](constraints.xdc) file according to board you have.

1. Clone the repository using `git clone https://github.com/shivanishah269/risc-v-core.git`.
2. `cd FPGA_Implementation`
3. `./run.sh`

## Counter example on FPGA using TL-Verilog

You can edit/test the [counter](counter.tlv) code on [makerchip-app](https://pypi.org/project/makerchip-app/) which is virtual desktop application of [makerchip](http://makerchip.com/) platform.

Install: `pip3 install makerchip-app`   
Run: `makerhip counter.tlv`

Run `./run.sh` file by changing tlv and tcl file name as [counter.tlv](counter.tlv) and [impl_counter.tcl](impl_counter.tcl).

## Steps to start using TL-Verilog and makerchip from scratch

1. Start with default template from [starting templates](https://gitlab.com/rweda/makerchip-app/-/tree/master/starting_templates) using `--from_url` tag as:  
   `makerchip --from_url 'https://gitlab.com/rweda/makerchip-app/-/raw/master/starting_templates/makerchip_default.tlv' design.tlv`  
   Or     
   If you are focusing on FPGA tool flow, then you can start with:  
   `makerchip --from_url 'template.tlv' design.tlv`
2. Connect to I/Os of Zedboard through [`constraints.xdc`](constraints.xdc)
3. Create the `.tcl` file for your project and change the [`run.sh`](run.sh) with respective tlv and tcl files.
4. Execute `./run.sh`
