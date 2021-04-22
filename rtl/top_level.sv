module top_level
	#(parameter N=3)	
	(
	input a,
	input clk,
	output y);
	
	logic [N-1:0] net;
	logic a1;

	always_ff @(posedge clk)
		a1 <= a;
		//y <= net[N-1];
	`ifdef SYNTHESIS
		CKINVM1R u0(.A(a1), .Z(net[0]));
	`else
		inv_beh u0(.A(a1), .Z(net[0]));
	`endif

	genvar i;
	
	`ifdef SYNTHESIS
		generate
			for(i=1; i<N; i=i+1) begin
			CKINVM1R u1 (.A(net[i-1]), .Z(net[i]));
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
