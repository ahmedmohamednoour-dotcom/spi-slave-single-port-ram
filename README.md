# SPI Slave with Single-Port RAM

## Overview
This project implements and verifies an **SPI Slave with a Single-Port RAM** in Verilog RTL.  
The design is based on a synchronous active-low reset FSM and supports write/read transactions via the SPI interface.

The design flow covers:
- RTL design of SPI Slave, RAM, and top-level integration
- Directed testbench for SPI transactions
- Simulation flow via QuestaSim DO file
- Vivado elaboration, synthesis, and implementation
- Timing, utilization, and device views
- FSM encoding exploration (gray / one_hot / sequential)
- Final FPGA bitstream generation

