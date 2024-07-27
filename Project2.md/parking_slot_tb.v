`timescale 1ns/1ns
`include "parking_slot.v"
module testbench;
reg [14:0]cars;
wire [6:0] seg;;
parking_Slot uut(cars,seg);
initial begin
 $dumpfile("parking_slot_tb.vcd");
    $dumpvars(0,testbench);
    $monitor($time,"cars=%b,seg=%b",cars,seg);

     cars=15'b001000010100011;
     #5 cars=15'b001010010100001;
     #5 $finish;
end
endmodule
