// Design Name:  Priority Encoder
// Module Name:    pr_encoder83_tb 
// Author Name: Sekhar Panda

 //////////////////////////////////////////////////////////////////////////////////


module pr_encoder83_tb();
reg [7:0]in;
wire [2:0]out;
wire IDLE;

pr_encoder83 DUT(in,out,IDLE);

task initialize;
begin
in=0;
end
endtask

task stimulus(input [7:0]i);
begin
#10;
in=i;
end
endtask

initial
begin
initialize;
stimulus(8'b00000001);
stimulus(8'b00001001);
stimulus(8'b00110011);
stimulus(8'b11011011);
stimulus(8'b00000000);
end

initial
begin 
$monitor("input=%b and output= %b and IDLE=%b",in,out,IDLE);
end
//Step7: Use $finish task to terminate the simulation at 100ns
initial 
begin
#70  $finish();    
end

endmodule
