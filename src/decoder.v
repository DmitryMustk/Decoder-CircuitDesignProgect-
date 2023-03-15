module decoder(
	input clk,
	input wire [3:0]num,
	output reg [7:0]dlg
);

	always @(posedge clk) 
	begin
		case(num)        //hgfedcba
			4'd0: dlg = 8'b00111111;
			4'd1: dlg = 8'b00000110;
			4'd2: dlg = 8'b01011011;
			4'd3: dlg = 8'b01001111;
			4'd4: dlg = 8'b01100110;
			4'd5: dlg = 8'b01101101;
			4'd6: dlg = 8'b01111101;
			4'd7: dlg = 8'b00000111;
			4'd8: dlg = 8'b01111111;
			4'd9: dlg = 8'b01101111;
			default: dlg = 8'b10000000;
		endcase
	end
endmodule