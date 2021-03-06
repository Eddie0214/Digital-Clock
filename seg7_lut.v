/* 
(C) OOMusou 2008 http://oomusou.cnblogs.com

Filename    : seg7_lut.V
Compiler    : Quartus II 7.2 SP3
Description : Demo how to use 8 bit 7 segment display decimal
Release     : 07/20/2008 1.0
*/
module seg7_lut (
  input      [3:0] i_dig,
  output reg [6:0] o_seg
);

always@(i_dig) begin
  case(i_dig)
    4'h1: o_seg = 7'b111_1001;  // ---t----
    4'h2: o_seg = 7'b010_0100;  // |      |
    4'h3: o_seg = 7'b011_0000;  // lt    rt
    4'h4: o_seg = 7'b001_1001;  // |      |
    4'h5: o_seg = 7'b001_0010;  // ---m----
    4'h6: o_seg = 7'b000_0010;  // |      |
    4'h7: o_seg = 7'b111_1000;  // lb    rb
    4'h8: o_seg = 7'b000_0000;  // |      |
    4'h9: o_seg = 7'b001_1000;  // ---b----
    4'ha: o_seg = 7'b000_1000;
    4'hb: o_seg = 7'b000_0011;
    4'hc: o_seg = 7'b100_0110;
    4'hd: o_seg = 7'b010_0001;
    4'he: o_seg = 7'b000_0110;
    4'hf: o_seg = 7'b000_1110;
    4'h0: o_seg = 7'b100_0000;
  endcase
end

endmodule