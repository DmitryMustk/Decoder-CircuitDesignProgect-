module decoder(
	input clk,
	input wire [3:0]num,
	output reg [7:0]dig
);

	always @(posedge clk) 
	begin
		case(num)        //hgfedcba
			4'd0: dig = 8'b00111111;
			4'd1: dig = 8'b00000110;
			4'd2: dig = 8'b01011011;
			4'd3: dig = 8'b01001111;
			4'd4: dig = 8'b01100110;
			4'd5: dig = 8'b01101101;
			4'd6: dig = 8'b01111101;
			4'd7: dig = 8'b00000111;
			4'd8: dig = 8'b01111111;
			4'd9: dig = 8'b01101111;
			default: dig = 8'b10000000;
		endcase
	end
endmodule