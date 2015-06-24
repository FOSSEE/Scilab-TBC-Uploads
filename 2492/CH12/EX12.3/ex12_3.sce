// Exa 12.3
format('v',6)
clc;
clear;
close;
// Given data
memory = 16;// in K
memory= memory*1024;// in bits
// Number of bits of storage,
Req_add_bits= log(memory)/log(2);
disp(Req_add_bits,"Number of bits of storage is : ")
disp(Req_add_bits,"Number of lines in address bus is : ")
