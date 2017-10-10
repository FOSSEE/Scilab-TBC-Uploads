clc;
clear;
n=7;//no. of bits
//the maximum value of exponents is given by
Max=1*(2^1)+1*(2^0);
//mantissa is found by
mantissa=1*(2^-1)+0*(2^-3)+0*(2^-3);
num=mantissa*(2^(Max*-1));//smallest possible positive number for this system
disp(num,"The smallest possible positive number for this system is")