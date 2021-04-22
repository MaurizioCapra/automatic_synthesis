module inv_chain
	#(parameter N=3)	
	(
	input a,
	output y);
	
	logic [N-1:0] net;

	`ifdef SYNTHESIS
		INVM1R u0(.A(a), .Z(net[0]));
	`else
		inv_beh u0(.A(a), .Z(net[0]));
	`endif

	genvar i;
	
	`ifdef SYNTHESIS
		generate
			for(i=1; i<N; i=i+1) begin
			INVM1R u1 (.A(net[i-1]), .Z(net[i]));
			end
		endgenerate
	`else
		generate
			for(i=1; i<N; i=i+1) begin
			inv_beh u1 (.A(net[i-1]), .Z(net[i]));
			end
		endgenerate
	`endif
	

	assign y = net[N-1];
endmodule
