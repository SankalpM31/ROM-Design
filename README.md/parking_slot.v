module parking_Slot(cars,seg);
 input [14:0] cars;
 wire [3:0] count;
 wire [6:0] seg1;
 output reg [6:0] seg;
 Parking_System M1(cars,count);
 Seven_Segment M2(count,seg1);
 always@(seg1)
 begin
    seg=seg1;
    end
endmodule

module Parking_System(cars,count);
input [14:0] cars;
output reg [3:0] count;
always@(cars)
 count=cars[14]+cars[13]+cars[12]+cars[11]+cars[10]+cars[9]+cars[8]+cars[7]+cars[6]+cars[5]+cars[4]+cars[3]+cars[2]+cars[1]+cars[0];

 endmodule

module Seven_Segment(in,seg);
input [3:0] in;
output reg [6:0] seg;

always @(in) begin
    case(in)
    4'b0000: seg=7'b1111110;
    4'b0001: seg=7'b0110000;
    4'b0010: seg=7'b1101101;
    4'b0011: seg=7'b1111001;
    4'b0100: seg=7'b0010011;
    4'b0101: seg=7'b1011011;
    4'b0110: seg=7'b1011111;
    4'b0111: seg=7'b1110000;
    4'b1000: seg=7'b1111111;
    4'b1001: seg=7'b1111011;
    4'b1010: seg=7'b1110111;
    4'b1011: seg=7'b0011111;
    4'b1100: seg=7'b1001111;
    4'b1101: seg=7'b0111110;
    4'b1110: seg=7'b1001111;
    4'b1111: seg=7'b1000111;
    default seg=7'b1111110;
    endcase
end
endmodule