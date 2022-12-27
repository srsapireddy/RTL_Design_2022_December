module dff(
    input clk, din,
    output reg dout
    );
always@(posedge clk)
begin
dout <= din;
end  
endmodule
 
module top(clk, a, din, dout);
input clk, a,din;
output  dout;
 
wire t1;
 
assign t1 = a & clk;
dff d1 (t1,din,dout);
 
 
endmodule