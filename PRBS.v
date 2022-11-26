module PRBS (
  clk	,
  rst	,
  out
  );

input clk, rst	;
output out		;

reg reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;
wire out;

always @(posedge clk)
  if (rst)
    begin
      reg0  <= 1'b1;
      reg1  <= 1'b1;
      reg2  <= 1'b1;
      reg3  <= 1'b1;
      reg4  <= 1'b1;
      reg5  <= 1'b1;
      reg6  <= 1'b1;
      reg7  <= 1'b1;
      reg8  <= 1'b1;
      reg9  <= 1'b1;
      reg10 <= 1'b1;
      reg11 <= 1'b1;
      reg12 <= 1'b1;
      reg13 <= 1'b1;
      reg14 <= 1'b1;
      reg15 <= 1'b1;
    end
  else
    begin
      reg0  <= out  ;
      reg1  <= reg0 ;
      reg2  <= reg1 ;
      reg3  <= reg2 ;
      reg4  <= reg3 ;
      reg5  <= reg4 ;
      reg6  <= reg5 ;
      reg7  <= reg6 ;
      reg8  <= reg7 ;
      reg9  <= reg8 ;
      reg10 <= reg9 ;
      reg11 <= reg10;
      reg12 <= reg11;
      reg13 <= reg12;
      reg14 <= reg13;
      reg15 <= reg14;
    end
    
    assign out = reg15 ^ reg14;
    
endmodule 