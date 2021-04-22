module inv_chain
	#(parameter N=3)	
	();
	
	logic [N-1:0] net;


	INVM12R u0(.A(net[N-1]), .Z(net[0]));

	genvar i;
	
	generate
		for(i=1; i<N; i=i+1) begin
		INVM12R u1 (.A(net[i-1]), .Z(net[i]));
		end
	endgenerate

endmodule
