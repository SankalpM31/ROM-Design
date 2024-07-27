`timescale 1ns/1ns
`include "rom.v"
module testbench;
reg clk;
reg en;
reg [3:0]addr;
wire [3:0]data;
rom_design uut(clk,en,addr,data);
initial 
begin
   clk=1'b1;
     forever begin
      #5 clk= ~ clk;
     end
      
 end
initial begin
 $dumpfile("rom_tb.vcd");
    $dumpvars(0,testbench);
    $monitor($time,"clk=%b,en=%b,addr=%b,data=%b",clk,en,addr,data);
     en=1'b1; 
     # 10 addr=4'b0010;
     # 10 addr=4'b1100;
     # 5 $finish;
end
endmodule
