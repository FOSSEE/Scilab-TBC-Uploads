// Example 2.6
clc;
clear;
close;
// Given data
P1= 7*10^5;// in N/m^2
V1= 3;// in m^3
V2= 9;// in m^3
T1= 150+273;// in K
T2= 10+273;// in K
// Formula P1*V1/T1 = P2*V2/T2
P2= P1*V1*T2/(T1*V2);// in N/m^2
disp(P2*10^-5,"Pressure of the gas in bar is : ")
