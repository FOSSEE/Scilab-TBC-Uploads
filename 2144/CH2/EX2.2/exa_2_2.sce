// Example 2.2
clc;
clear;
close;
// Given data
guagePressure= 1500;// in kN/m^2
atmPressure= 100;// in kN/m^2
P1= guagePressure+atmPressure;// in kN/m^2
V1= 0.1;// in m^3
V2= 0.4;// in m^3
// Formula P1*V1 = P2*V2
P2= P1*V1/V2;// in kN/m^2
NewGuagePressure= P2-atmPressure;// in kN/m^2
disp(NewGuagePressure,"New guage pressure in kN/m^2 is : ")
