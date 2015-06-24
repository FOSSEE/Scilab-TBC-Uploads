// Example 14.2
format('v',6)
clc;
clear;
close;
// given data
I= 4;// in mA
I=I*10^-3;// in A
V1=0.5;// voltage across diode in V
R=100;// in Ω
// The input voltage 
V= V1+I*R;// in V
disp(V,"The input voltage in volts is : ")
