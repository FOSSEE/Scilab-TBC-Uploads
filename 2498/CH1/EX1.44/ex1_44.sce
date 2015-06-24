// Exa 1.44
clc;
clear;
close;
format('v',6)
// Given data
V_T = 0.7;// in V
V = 5;// in V
R = 2;// in k ohm
R = R * 10^3;// in ohm
Vs = 0.7;
Vx = Vs+V_T;// in V
// The value of I1 
I1 = (V-Vx)/R;// in A
I1 = I1 * 10^3;// in mA
disp(I1,"The value of I1 in mA is");
// The value of I2 
I2 = I1;// in mA
disp(I2,"The value of I2 in mA is");
