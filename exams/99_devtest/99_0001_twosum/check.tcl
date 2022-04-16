# configs
set outputDir ./build/
set_part xc7a100tfgg484-2

# load sources
read_verilog [ glob ./exams/99_devtest/99_0001_twosum/*.sv ]

# compile
synth_design -top exam_checker
