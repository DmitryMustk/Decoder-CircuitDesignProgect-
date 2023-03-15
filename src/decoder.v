module decoder(
	input clk,
	input wire [3:0]num,
	output reg [7:0]dlg
);

	always @(posedge clk) 
	begin
		case(num)        //abcdefgh
			4'd0: dlg = 8'b11111100;
			4'd1: dlg = 8'b01100000;
			4'd2: dlg = 8'b11011010;
			4'd3: dlg = 8'b11110010;
			4'd4: dlg = 8'b01100110;
			4'd5: dlg = 8'b10110110;
			4'd6: dlg = 8'b10111110;
			4'd7: dlg = 8'b11100000;
			4'd8: dlg = 8'b11111100;
			4'd9: dlg = 8'b11110100;
			default: dlg = 8'b00000001;
		endcase
	end
endmodule