// Example 2.7
clc;
clear;
close;
// Given data
P1= 100;// in kN/m^2
V1byV2= 12;// in
T1= 115+273;// in K
T2= 180+273;// in K
// Formula P1*V1/T1 = P2*V2/T2
P2= P1*V1byV2*T2/T1;// in N/m^2
disp(P2*10^-2,"Absolute pressure at the end of compression stroke in bar is : ")
