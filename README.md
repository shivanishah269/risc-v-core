# RISC-V based Microprocessor

This repository contains all the information needed to build your RISC-V pipelined core, which has support of base interger RV32I instruction format using TL-Verilog on makerchip platform.

# Table of Contents
- [Introduction to RISC-V ISA](#introduction-to-risc-v-isa)
- [Overview of GNU compiler toolchain](#overview-of-gnu-compiler-toolchain)
- [Introduction to ABI](#introduction-to-abi)
- [Digital Logic with TL-Verilog and Makerchip](#digital-logic-with-tl-verilog-and-makerchip)
  - [Combinational logic](#combinational-logic)
  - [Sequential logic](#sequential-logic)
  - [Pipelined logic](#pipelined-logic)
  - [Validity](#validity)
- [Basic RISC-V CPU micro-architecture](#basic-risc-v-cpu-micro-architecture)
  - [Fetch](#fetch)
  - [Decode](#decode)
  - [Register File Read](#register-file-read)
  - [Execute](#execute)
  - [Register File Write](#register-file-write)
  - [Control Logic](#control-logic)
- [Pipelined RISC-V CPU](#pipelined-risc-v-cpu)
  - [Pipelinig the CPU](#pipelining-the-cpu)
  - [Load and store instructions and memory](#load-and-store-instructions-and-memory)
  - [Completing the RISC-V CPU](#completing-the-risc-v-cpu)
- [Contributors](#contributors)
- [References](#references)
- [Acknowledgements](#acknowledgements)
- [Contact Information](#contact-information)

# Introduction to RISC-V ISA 

A RISC-V ISA is defined as a base integer ISA, which must be present in any implementation, plus optional extensions to the base ISA. Each base integer instruction set is characterized by
  1. Width of the integer registers (HLEN) and 
  2. Corresponding size of the address space
  3. Number of integer registers (32 in RISC-V) 

# Overview of GNU compiler toolchain

# Introduction to ABI

# Digital Logic with TL-Verilog and Makerchip

## Combinational logic

## Sequential logic

## Pipelined logic

## Validity

# Basic RISC-V CPU micro-architecture

## Fetch

## Decode

## Register File Read

## Execute

## Register File Write

## Control Logic

# Pipelined RISC-V CPU

## Pipelining the CPU

## Load and store instructions and memory

## Completing the RISC-V CPU

# Contributors

# References

* [RISC-V ISA specification](https://github.com/riscv/riscv-isa-manual/releases/download/draft-20200727-8088ba4/riscv-spec.pdf)

# Acknowledgements

# Contact Information
