module tb (a);



 

inout tri [1:0] a ;



endmodule

module dut (c,d);
inout   c;
inout  d;

tb uut (.a({c,d}));

endmodule
