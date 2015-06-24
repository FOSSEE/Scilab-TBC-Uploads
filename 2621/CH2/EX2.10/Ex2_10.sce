// Example 2.10
clc;
clear;
close;
// Given data
format('v',9);
Vd= 25;//differential input voltage in µV
Vd= Vd*10^-6;// in V
A= 200000;// open loop gain
// Output voltage,
Vout= A*Vd;// in V
disp("The output voltage is : ± "+string(Vout)+ "V")



