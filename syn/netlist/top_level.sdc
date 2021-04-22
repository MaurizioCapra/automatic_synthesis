###################################################################

# Created by write_sdc on Tue Apr 20 10:48:46 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_load -pin_load 0.0027595 [get_ports y]
create_clock [get_ports clk]  -name MY_CLK  -period 0.4  -waveform {0 0.2}
set_clock_uncertainty 0.07  [get_clocks MY_CLK]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports a]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports y]
