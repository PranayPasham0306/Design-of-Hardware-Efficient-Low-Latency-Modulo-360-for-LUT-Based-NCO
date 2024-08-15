module modulo_opt (
    input clk,
    input [15:0] in, 
    output reg [8:0] modulo
);

//localparam [8:0] two_power_i_modulo_360 [0:15] = {
//    9'd1,    // two_power_0_modulo_360
//    9'd2,    // two_power_1_modulo_360
//    9'd4,    // two_power_2_modulo_360
//    9'd8,    // two_power_3_modulo_360
//    9'd16,   // two_power_4_modulo_360
//    9'd32,   // two_power_5_modulo_360
//    9'd64,   // two_power_6_modulo_360
//    9'd128,  // two_power_7_modulo_360
//    9'd256,  // two_power_8_modulo_360
//    9'd152,  // two_power_9_modulo_360
//    9'd304,  // two_power_10_modulo_360
//    9'd248,  // two_power_11_modulo_360
//    9'd136,   // two_power_12_modulo_360
//    9'd272,   // two_power_13_modulo_360
//    9'd184,   // two_power_14_modulo_360
//    9'd8   // two_power_15_modulo_360
//};

localparam [8:0] two_power_modulo_360_0 = 9'd1;
localparam two_power_modulo_360_1  = 2'd2;
localparam two_power_modulo_360_2  = 3'd4;
localparam two_power_modulo_360_3  = 4'd8;
localparam two_power_modulo_360_4  = 5'd16;
localparam two_power_modulo_360_5  = 6'd32;
localparam two_power_modulo_360_6  = 7'd64;
localparam two_power_modulo_360_7  = 8'd128;
localparam two_power_modulo_360_8  = 9'd256;
localparam two_power_modulo_360_9  = 9'd152;
localparam two_power_modulo_360_10 = 9'd304;
localparam two_power_modulo_360_11 = 8'd248;
localparam two_power_modulo_360_12 = 8'd136;
localparam two_power_modulo_360_13 = 9'd272;
localparam two_power_modulo_360_14 = 8'd184;
localparam two_power_modulo_360_15 = 4'd8;





reg [15:0] in_reg;
wire [8:0] modulo_wire;
reg [10:0] level1_out;
reg [9:0] level2_out;
reg [9:0] level3_out;
integer i;

always @(*) begin

	level1_out = 0;
	if( in_reg[0] == 1) level1_out = level1_out + two_power_modulo_360_0;
	if( in_reg[1] == 1) level1_out = level1_out + two_power_modulo_360_1;
	if( in_reg[2] == 1) level1_out = level1_out + two_power_modulo_360_2;
	if( in_reg[3] == 1) level1_out = level1_out + two_power_modulo_360_3;
	if( in_reg[4] == 1) level1_out = level1_out + two_power_modulo_360_4;
	if( in_reg[5] == 1) level1_out = level1_out + two_power_modulo_360_5;
	if( in_reg[6] == 1) level1_out = level1_out + two_power_modulo_360_6;
	if( in_reg[7] == 1) level1_out = level1_out + two_power_modulo_360_7;
	if( in_reg[8] == 1) level1_out = level1_out + two_power_modulo_360_8;
	if( in_reg[9] == 1) level1_out = level1_out + two_power_modulo_360_9;
	if( in_reg[10] == 1) level1_out = level1_out + two_power_modulo_360_10;
	if( in_reg[11] == 1) level1_out = level1_out + two_power_modulo_360_11;
	if( in_reg[12] == 1) level1_out = level1_out + two_power_modulo_360_12;
	if( in_reg[13] == 1) level1_out = level1_out + two_power_modulo_360_13;
	if( in_reg[14] == 1) level1_out = level1_out + two_power_modulo_360_14;
	if( in_reg[15] == 1) level1_out = level1_out + two_power_modulo_360_15;
end

always @(*) begin
	level2_out = 0;
	if (level1_out[0] == 1) level2_out = level2_out + two_power_modulo_360_0;
	if (level1_out[1] == 1) level2_out = level2_out + two_power_modulo_360_1;
	if (level1_out[2] == 1) level2_out = level2_out + two_power_modulo_360_2;
	if (level1_out[3] == 1) level2_out = level2_out + two_power_modulo_360_3;
	if (level1_out[4] == 1) level2_out = level2_out + two_power_modulo_360_4;
	if (level1_out[5] == 1) level2_out = level2_out + two_power_modulo_360_5;
	if (level1_out[6] == 1) level2_out = level2_out + two_power_modulo_360_6;
	if (level1_out[7] == 1) level2_out = level2_out + two_power_modulo_360_7;
	if (level1_out[8] == 1) level2_out = level2_out + two_power_modulo_360_8;
	if (level1_out[9] == 1) level2_out = level2_out + two_power_modulo_360_9;

end

always @(*) begin
	level3_out = 0;
	if (level2_out[0] == 1) level3_out = level3_out + two_power_modulo_360_0;
	if (level2_out[1] == 1) level3_out = level3_out + two_power_modulo_360_1;
	if (level2_out[2] == 1) level3_out = level3_out + two_power_modulo_360_2;
	if (level2_out[3] == 1) level3_out = level3_out + two_power_modulo_360_3;
	if (level2_out[4] == 1) level3_out = level3_out + two_power_modulo_360_4;
	if (level2_out[5] == 1) level3_out = level3_out + two_power_modulo_360_5;
	if (level2_out[6] == 1) level3_out = level3_out + two_power_modulo_360_6;
	if (level2_out[7] == 1) level3_out = level3_out + two_power_modulo_360_7;
	if (level2_out[8] == 1) level3_out = level3_out + two_power_modulo_360_8;
	if (level2_out[9] == 1) level3_out = level3_out + two_power_modulo_360_9;

end

assign modulo_wire = (level3_out < 360) ? level3_out: (level3_out - 9'd360);

always @(posedge clk) begin
    in_reg <= in;
    modulo <= modulo_wire;
end

endmodule
