set_host_options -max_cores 4
analyze -f sv -lib WORK -autoread ../rtl
set power_preserve_rtl_hier_names true
elaborate top_level -lib WORK > ./elaborate.txt
uniquify
link
ungroup -all -flatten 
create_clock -name MY_CLK -period .4 clk
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] clk]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of uk65lscllmvbbr_100c25_tc/BUFM14R/A] 
set_load $OLOAD [all_outputs]
check_design
compile_ultra -timing -gate_clock -no_autoungroup
report_timing > ./timing.txt
report_area > ./area.txt
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf netlist/top_level.sdf
write -f verilog -hierarchy -output netlist/top_level.v
write_sdc netlist/top_level.sdc
quit
