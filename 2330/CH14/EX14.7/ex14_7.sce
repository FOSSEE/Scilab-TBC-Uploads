// Example 14.7
format('v',6)
clc;
clear;
close;
// given data
V_E= 1;// in V
R= 400;// in Ω
I= 7*10^-3;// in A
// The emitter supply voltage
V= V_E+I*R;// in V
disp(V,"The emitter supply voltage in volts is : ")

