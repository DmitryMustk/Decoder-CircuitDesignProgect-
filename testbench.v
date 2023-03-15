`timescale 1 ns / 100 ps

module testbench();
	reg clk = 1'b0;
	always
	begin
		#1 clk = ~clk;
	end

	reg [3:0]num = 4'd1;

	wire a,b,c,d,e,f,g,h;
	decoder decoder1(.clk(clk), .num(num), .dlg( {a,b,c,d,e,f,g,h} ));

	initial 
	begin
		$dumpvars;
		$display("Test started...");
		#10 $finish;
	end
endmodule