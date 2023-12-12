 module test;

	logic a,b,c;

	logic clk;

	always #5 clk = ~clk;
	
	initial begin
		clk = 0;
		a = 0; b = 0; c = 0;
		#20 a  = 1;  
		#10 b = 0; c = 1;
	end
	hello:assert property($rose(a)|->##1!b);

endmodule
