#!/usr/bin/env -S vivado -mode tcl -source

# configs
set outputDir ./build/
set_part xc7a100tfgg484-2

# load sources
read_verilog [ glob ./exams/99_devtest/99_0001_twosum/*.sv ]

# compile
synth_design -top exam_checker

#simulate
exec xvlog --sv ./exams/99_devtest/99_0001_twosum/user.sv ./exams/99_devtest/99_0001_twosum/answer.sv ./exams/99_devtest/99_0001_twosum/test.sv
exec xelab -debug typical exam_checker
exec xsim --t simulate.tcl exam_checker
