// Code generated by Icestudio 0.3.0-beta2

// Testbench template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 10 ns / 1 ns


module main_tb;

 // Simulation time: 100ns (10 * 10ns)
 parameter DURATION = 10;

 // TODO: edit the module parameters here
 // e.g. localparam constant_value = 1;
 localparam constant_N = 20;

 // Input/Output
 reg clk;
 reg Enable;
 reg Reset;
 wire LED5;
 wire LED4;
 wire [3:0] LEDs;

 // Module instance
 main #(
  .v30f40a(constant_N)
 ) MAIN (
  .v7c9917(clk),
  .vb8a806(Enable),
  .ve0befb(Reset),
  .v32232e(LED5),
  .v1d1af8(LED4),
  .v6a65cd(LEDs)
 );

 // Clock signal
 always #0.5 clk = ~clk;

 initial begin
  // File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);

  // TODO: initialize the registers here
  // e.g. value = 1;
  // e.g. #2 value = 0;
  clk = 0;
  Enable = 0;
  Reset = 0;

  #(DURATION) $display("End of simulation");
  $finish;
 end

endmodule
