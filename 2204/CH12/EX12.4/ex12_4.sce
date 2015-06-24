// Exa 12.4
clc;
clear;
close;
// Given data
n = 4;
V_OFS = 5;// in V
digital_input= '1000';// in binary
D= bin2dec(digital_input);// in decimal
Resolution = V_OFS/((2^n)-1);
V_out = Resolution * D;// in V
disp(V_out,"When input is 1000 then, the output in V is");
// When
digital_input= '1111';// in binary
D= bin2dec(digital_input);// in decimal
V_out= Resolution * D;// in V
disp(V_out,"When input is 1111 then , the output in V is");
