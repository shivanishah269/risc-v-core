# RISC-V based Microprocessor

This repository contains all the information needed to build your RISC-V pipelined core, which has support of base interger RV32I instruction format using TL-Verilog on makerchip platform.

# Table of Contents
- [Introduction to RISC-V ISA](#introduction-to-risc-v-isa)
- [Overview of GNU compiler toolchain and Introduction to ABI](#overview-of-gnu-compiler-toolchain-and-introduction-to-abi)
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
- [Acknowledgements](#acknowledgements)
- [Contact Information](#contact-information)

# Introduction to RISC-V ISA 

A RISC-V ISA is defined as a base integer ISA, which must be present in any implementation, plus optional extensions to the base ISA. Each base integer instruction set is characterized by
  1. Width of the integer registers (XLEN) 
  2. Corresponding size of the address space
  3. Number of integer registers (32 in RISC-V)

More details on RISC-V ISA can be obtained [here](https://github.com/riscv/riscv-isa-manual/releases/download/draft-20200727-8088ba4/riscv-spec.pdf).

# Overview of GNU compiler toolchain and Introduction to ABI

The GNU Toolchain is a set of programming tools in Linux systems that programmers can use to make and compile their code to produce a program or library. So, how the machine code which is understandable by processer is explained below.

  * Preprocessor - Process source code before compilation. Macro definition, file inclusion or any other directive if present then are preprocessed. 
  * Compiler - Takes the input provided by preprocessor and converts to assembly code.
  * Assembler - Takes the input provided by compiler and converts to relocatable machine code.
  * Linker - Takes the input provided by Assembler and converts to Absolute machine code.

Under the risc-v toolchain, 
  * To use the risc-v gcc compiler use the below command:

    `riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o <object filename> <C filename>`

    More generic command with different options:

    `riscv64-unknown-elf-gcc <compiler option -O1 ; Ofast> <ABI specifier -lp64; -lp32; -ilp32> <architecture specifier -RV64 ; RV32> -o <object filename> <C      filename>`

    More details on compiler options can be obtained [here](https://www.sifive.com/blog/all-aboard-part-1-compiler-args)

  * To view assembly code use the below command,
    
    `riscv64-unknown-elf-objdump -d <object filename>`
    
  * To use SPIKE simualtor to run risc-v obj file use the below command,
  
    `spike pk <object filename>`
    
    To use SPIKE as debugger
    
    `spike -d pk <object Filename>` with degub command as `until pc 0 <pc of your choice>`

    To install complete risc-v toolchain locally go to [this](https://github.com/kunalg123/riscv_workshop_collaterals) github repository and run the `run.sh` file.

An Application Binary Interface is a set of rules enforced by the Operating System on a specific architecture. So, Linker converts relocatable machine code to absolute machine code via ABI interface specific to the architecture of machine.

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

# Acknowledgements

# Contact Information
