// Exa 2.13
clc;
clear;
close;
// Given data
AR= 100;// true value of resistance in ohm
AI= 2;// true value of current in amp
R= 0.2;// uncertainties in resistance in ohm
I= 0.01;// uncertainties in current in amp
PLR= R/AR*100;// percentage limiting error to resistance
PLC= I/AI*100;// percentage limiting error to current
P=AI^2*AR;// in watt
LE_P= 2*PLC+PLR;// limiting error in the power dissipation 
disp("Power dissipation")
disp(string(P-P*LE_P/100)+" to "+string(P+P*LE_P/100))
