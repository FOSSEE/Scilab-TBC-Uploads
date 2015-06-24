//example 16.2
clc; funcprot(0);
// Initialization of Variable
h=100;
Tinfinity=25;
Pe=10^4;
Tc=Tinfinity+Pe*(1/(1/h)+1/(0.9e-4+0.008/238+1/h))^-1;
disp(Tc,"allowable maximum temperature in degreeC")
clear()
