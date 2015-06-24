//example 3.5
clc; funcprot(0);
// Initialization of Variable
Wdot=-0.225;
A=25.0e-6;
h=150;
Tf=293;//temperature
Tb=-Wdot/h/A+Tf;
disp(Tb,"temperature in kelvin (80 C)");
clear()
