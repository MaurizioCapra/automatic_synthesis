module tb();

reg clk;
reg in;
reg out;

// oscillate clock every 10 simulation units
always #10 clk <= !clk;

// oscillate clock every 10 simulation units
always #35 in <= !in;

// initialise values
initial #0 begin
clk = 0;
in = 0;
// finish after 200 simulation units
//#200 $finish;
end

top_level #(.N(3)) dut(
	.a(in),
	.clock(clk),
	.y(out));

// monitor results
always @(negedge clk)
$display("[$display] input=%b  output=%b", in, out);

endmodule