`timescale 1ns/100ps
module modulo_tb;

reg clk;
reg [15:0] in;
wire [8:0] modulo;

modulo mod_360 (
    .clk(clk),
    .in(in),
    .modulo(modulo)
);

//modulo_opt mod_360 (
//    .clk(clk),
//    .in(in),
//    .modulo(modulo)
//);

// Generate the clock signal
always begin
    #5 clk = ~clk;  // Toggle clock every 5 ns to create a 10 ns clock period
end

initial begin
    // Initialize signals
    clk = 0;
    in = 0;

    #10;  // Wait for a full clock cycle (10 ns)

    // Apply test vectors
    in <= 16'd50;
    #10;  // Wait for next clock edge

    in <= 16'd360;
    #10;

    in <= 16'd361;
    #10;

    in <= 16'd1000;
    #10;

    in <= 16'hFFFF;
    #10;

    // Finish simulation
    $finish;
end

endmodule
