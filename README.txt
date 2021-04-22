the RTL folders contain the SystemVerilog description of the inverter chain.
The tb folder contains the testbench used to test the RTL using questasim.
The syn folders contain the synthesis referref to the rtl specified inside the script_syn_try.tcl in each folder.
The ring_osc contains a sv description of a simple ring oscillator that has its synthesis inside syn_ring_osc. To be noted that the synthesis performs well, but the simulation can't be performed since it represents a combinational loop.
