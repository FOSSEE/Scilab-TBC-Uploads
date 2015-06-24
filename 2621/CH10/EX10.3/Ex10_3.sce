// Example 10.3
clc;
clear;
close;
// Given data
format('v',6);
R1= 240;// in Ω
R2= 1.2*10^3;// in Ω
// Regulated output voltage in the circuit,
Vout= 1.25*(1+R2/R1);// in V
disp(Vout,"The regulated output voltage in volts is : ");




 
