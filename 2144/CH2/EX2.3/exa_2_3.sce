// Example 2.3
clc;
clear;
close;
// Given data
P1= -4+101.3;// in kN/m^2
V1= 96+475;// in cm^3
V2= 96;// in cm^3
// Formula P1*V1 = P2*V2
P2= P1*V1/V2;// in kN/m^2
disp(P2,"Pressure at the end of the compression stroke in kN/m^2 is : ")
disp(P2*10^-2,"and in bar : ")
