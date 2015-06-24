// Example 16.5
format('v',6)
clc;
clear;
close;
// given data
R_F= 22*10^3;// in Ω
R_S= 1*10^3;// in Ω
A= 100000;// unit less
// The closed-loop voltage gain
A_CL= R_F/R_S;
// The desensitivity
desensitivity= A/A_CL;
disp(A_CL,"The closed-loop voltage gain is : ")
disp(desensitivity,"The desensitivity is : ")


