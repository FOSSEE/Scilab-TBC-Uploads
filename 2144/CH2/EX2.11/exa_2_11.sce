// Example 2.11
clc;
clear;
close;
// Given data
P1= 350;// in kN/m^2
P1=P1*10^3;// in N/m^2
P2= 1.05;// in kN/m^2
P2=P2*10^6;// in N/m^2
V= 0.3;// in m^3
R= 0.29;// in kJ/kg-K
R= R*10^3;// in j/kgK
T1= 35+273;// in K
// Formula P*V= m*R*T
m= P1*V/(R*T1);// in kg
// Formula P1*V1/T1 = P2*V2/T2 and since V1= V2
T2= P2*T1/P1;// in K
disp(T2-273,"Temperature at constant volume compression in °C is : ")
