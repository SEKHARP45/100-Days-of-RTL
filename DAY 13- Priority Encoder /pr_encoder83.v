
// Design Name:  Priority Encoder
// Module Name:    pr_encoder83 
// Author Name: Sekhar Panda

 //////////////////////////////////////////////////////////////////////////////////
module pr_encoder83(in,y,IDLE);
input [7:0]in;
output reg [2:0]y;
output reg IDLE;
always@(in)
begin
if (in[7])
begin
y=3'b111;
IDLE=1'b0;
end
else if (in[6])
begin
y=3'b110;
IDLE=1'b0;
end
else if (in[5])
begin
y=3'b101;
IDLE=1'b0;
end
else if (in[4])
begin
y=3'b100;
IDLE=1'b0;
end
else if (in[3])
begin
y=3'b011;
IDLE=1'b0;
end
else if (in[2])
begin
y=3'b010;
IDLE=1'b0;
end
else if (in[1])
begin
y=3'b001;
IDLE=1'b0;
end
else if (in[0])
begin
y=3'b000;
IDLE=1'b0;
end
else
begin
y=3'b000;
IDLE=1'b1;
end
end
endmodule
