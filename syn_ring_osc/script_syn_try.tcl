set_host_options -max_cores 4
analyze -f sv -lib WORK ../ring_osc/inv_chain.sv
set power_preserve_rtl_hier_names true
elaborate inv_chain -lib WORK > ./elaborate.txt
link
check_design
ungroup -all -flatten
set_dont_touch inv_chain
set_dont_touch u0
set_dont_touch genblk*
compile
report_timing > ./timing.txt
report_area > ./area.txt
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf netlist/inv_chain.sdf
write -f verilog -hierarchy -output netlist/inv_chain.v
write_sdc netlist/inv_chain.sdc
quit
