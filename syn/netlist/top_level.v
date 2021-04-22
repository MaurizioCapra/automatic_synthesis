/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Apr 20 10:48:46 2021
/////////////////////////////////////////////////////////////


module top_level ( a, clk, y );
  input a, clk;
  output y;
  wire   a1;

  INVM1R U3 ( .A(a1), .Z(y) );
  DFQM1RA a1_reg ( .D(a), .CK(clk), .Q(a1) );
endmodule

