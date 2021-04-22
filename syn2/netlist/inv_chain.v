/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Apr 21 16:37:43 2021
/////////////////////////////////////////////////////////////


module inv_chain ( a, y );
  input a;
  output y;

  wire   [1:0] net;

  INVM12R u0 ( .A(a), .Z(net[0]) );
  CKINVM1R genblk1_1__u1 ( .A(net[0]), .Z(net[1]) );
  CKINVM1R genblk1_2__u1 ( .A(net[1]), .Z(y) );
endmodule

