//chapter 12
//Example 12.1
//Q.Find the binary equivalent of each bit in a 4-bit system
//solution:
clc;
clear;
LSB = 1/(2^4-1); // calculating binary weights 
LSB2 = 2*1/(2^4-1);
LSB3 = 4*1/(2^4-1);
MSB = 8*1/(2^4-1);
disp("Binary weight of each bit in a 4-bit system');
disp("LSB ="); // displaing the result 
disp(LSB);
disp("LSB2 =");
disp(LSB2) 
disp("LSB3 =");
disp(LSB3) 
disp("MSB =");
disp(MSB) ;