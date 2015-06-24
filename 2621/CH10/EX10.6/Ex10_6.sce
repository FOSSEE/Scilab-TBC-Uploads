// Example 10.6
clc;
clear;
close;
// Given data
format('v',6);
V_REF= 1.25;// in V
R1= 3*10^3;// in Ω
R2= 1*10^3;// in Ω
Vin= 20;// in V
Vout= V_REF*(R1+R2)/R2;// output voltage in volts
// Duty cycle,
D= Vout/Vin*100;// in %
disp("The duty cycle is "+string(D)+" %")

