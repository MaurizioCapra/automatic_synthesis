module top_level	
	(
	input a,
	input clk,
	output y);
	
	logic a1;

	always_ff @(posedge clk)
		a1 <= a;
		//y <= net[N-1];

	inv_chain #(.N(3)) 
		chain(
		.a(a1), 
		.y(y));
	
endmodule
