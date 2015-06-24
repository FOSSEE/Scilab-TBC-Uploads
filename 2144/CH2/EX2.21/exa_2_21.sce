// Example 2.21
clc;
clear;
close;
// Given data
Cp = 0.796;// in kJ/kg-K
Cv = 0.67;// in kJ/kg-K
P1=1;// in bar
P1= P1*10^5;// in N/m^2
P2=3.5;// in bar
P2= P2*10^5;// in N/m^2
V1= 0.12;// in m^3
V2= 0.05;// in m^3
m=1;// in kg
R= Cp-Cv;// in kJ/kg-K
R= R*10^3;// in J/kg-K
// Formula P*V= m*R*T
T1= P1*V1/(m*R);// in K
// Formula P1*V1/T1 = P2*V2/T2
T2= P2*V2*T1/(P1*V1);// in K
T= T2-T1;// Temperature rise in K
disp(T,"Temperature rise in K is : ")
E= m*Cv*(T2-T1);// change in internal energy kJ
disp(E,"Change in internal energy in kJ is : ");
