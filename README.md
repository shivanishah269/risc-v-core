# RISC-V based Microprocessor

This repository contains all the information needed to build your RISC-V pipelined core, which has support of base interger RV32I instruction format using TL-Verilog on makerchip platform.

# Table of Contents
- [Introduction to RISC-V ISA.](#introduction-to-risc-v-isa-flow)
- [Overview of GNU compiler toolchain.](#overview-of-gnu-compiler-toolchain)
- [Introduction to ABI.](#introduction-to-abi)
- [Digital Logic with TL-Verilog and Makerchip.](#digital-logic-with-tl-verilog-and-makerchip)
  - [Combinational logic.](#combinational-logic)
  - [Sequential logic.](#sequential-logic)
  - [Pipelined logic.](#pipelined-logic)
  - [Validity.](#validity)
  - [Hierarchy.](#hierarchy)
- [Basic RISC-V CPU micro-architecture.](#basic-risc-v-cpu-micro-architecture)
  - [Fetch.](#fetch)
  - [Decode.](#decode)
  - [Register File Read.](#register-file-read)
  - [Execute.](#execute)
  - [Register File Write.](#register-file-write)
  - [Control Logic.](#control-logic)
- [Pipelined RISC-V CPU.](#pipelined-risc-v-cpu)
  - [Pipelinig the CPU.](#pipelining-the-cpu)
  - [Load and store instructions and memory.](#load-and-store-instructions-and-memory)
  - [Completing the RISC-V CPU.](#completing-the-risc-v-cpu)
- [Contributors.](#limitations)
- [Acknowledgements.](#acknowledgements)
- [Contact Information.](#acknowledgements)
