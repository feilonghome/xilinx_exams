#!/usr/bin/env -S vivado -mode tcl -source

# configs
set_part xc7a100tfgg484-2

# load sources
read_verilog [ glob ../*.sv ]

# compile
synth_design -top exam_checker

#simulate
exec xvlog --sv ../user.sv ../answer.sv ../test.sv
exec xelab -debug typical exam_checker
exec xsim --t ../simulate.tcl exam_checker

# drawdrom
exec wavedrom-cli -i wave.json -s wave.svg

quit
