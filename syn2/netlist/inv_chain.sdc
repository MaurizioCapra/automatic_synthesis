###################################################################

# Created by write_sdc on Wed Apr 21 16:37:43 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_load -pin_load 0.0027595 [get_ports y]
