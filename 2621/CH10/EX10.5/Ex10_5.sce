// Example 10.5
clc;
clear;
close;
// Given data
format('v',6);
V_REF= 1.25;// in V
R1= 2.5*10^3;// in Ω
R2= 1*10^3;// in Ω
I= V_REF/R2;// in A
// The output voltage,
Vout= I*(R1+R2);// in V
disp(Vout,"The regulated output voltage in volts is : ")

