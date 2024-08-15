module modulo (
    input clk,
    input [15:0] in, 
    output reg [8:0] modulo
);

reg [15:0] in_reg;

always @(posedge clk) begin
    in_reg <= in;
    modulo <= in_reg % 360;
end

endmodule
