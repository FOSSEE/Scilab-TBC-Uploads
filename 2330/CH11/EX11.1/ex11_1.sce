// Example 11.1
format('v',5)
clc;
clear;
close;
// given data
r_F= 220;// in Ω
r_E= 4.7;//in Ω
// The closed loop voltage gain 
A_CL= r_F/r_E+1;
disp(A_CL,"The closed loop voltage gain is : ")
