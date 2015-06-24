// Example 2.18
clc;
clear;
close;
// Given data
Cv= 0.718;// in kJ/kgK
R= 0.278;// in kJ/kgK
T1= 15+273;// in K
T2= 135+273;// in K
m= 2;// mass in kg
V1= 0.7;// in m^3
Q= m*Cv*(T2-T1);// in kJ
disp(Q,"Heat supplied to gas in kJ is : ")
// Formula P1*V1= m*R*T1
P1= m*R*T1/V1;// in kN/m^2 absolute
// From P1/T1= P2/T2
P2= P1*T2/T1;// in kN/m^2
disp(P2,"The final pressure in kN/m^2 is : ")
