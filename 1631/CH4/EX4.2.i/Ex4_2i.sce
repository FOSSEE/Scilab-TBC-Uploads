//Caption:code word length
//Example 4.2.i
//page no 167
//find code word length
clc;
clear;
//Given data
bandwidth=4.2*10^6;
fm=bandwidth;
q=512// Quantization levels
//q=2^v
v=log10(512)/log10(2);
disp(v,"The code word legth is ");
disp("bits");

