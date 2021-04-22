/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Apr 21 18:10:12 2021
/////////////////////////////////////////////////////////////


module inv_chain (  );

  wire   [2:0] net;

  INVM12R u0 ( .A(net[2]), .Z(net[0]) );
  INVM12R genblk1_1__u1 ( .A(net[0]), .Z(net[1]) );
  INVM12R genblk1_2__u1 ( .A(net[1]), .Z(net[2]) );
endmodule

