// Exa 12.2
format('v',6)
clc;
clear;
close;
// Given data
// (a) For 1024 number of bits
No_of_bits= 1024;// bits
Req_add_bits= log(No_of_bits)/log(2);
disp(Req_add_bits,"Address bits required for a memory that has 1024 number of bits");

// (b) For 256 number of bits
No_of_bits= 256;// bits
Req_add_bits= log(No_of_bits)/log(2);
disp(Req_add_bits,"Address bits required for a memory that has 256 number of bits");

// (c) For 4098 number of bits
No_of_bits= 4096;// bits
// 2^12= 4096, 2^13= 8192, where 4096<4098<8192 or 2^12<4098<2^13, hence
Req_add_bits= 13;
disp(Req_add_bits,"Address bits required for a memory that has 4098 number of bits");

// d) For 16384 number of bits
No_of_bits= 16384;// bits
Req_add_bits= log(No_of_bits)/log(2);
disp(Req_add_bits,"Address bits required for a memory that has 16384 number of bits");
