// Example 2.1
clc;
clear;
close;
// Given data
P1= 250;// in kN/m^2
V1= 6.2;// in m^3
V2= 1.82;// in m^3
// Formula P1*V1 = P2*V2
P2= P1*V1/V2;// in kN/m^2
disp(P2,"Pressure of air after compression in kN/m^2 is : ")
