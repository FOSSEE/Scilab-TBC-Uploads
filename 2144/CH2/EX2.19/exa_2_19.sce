// Example 2.19
clc;
clear;
close;
// Given data
Cv= 1.005;// in kJ/kgK
T1= 200+273;// in K
T2= 15+273;// in K
V1= 0.12;// in m^3
m= 0.25;// mass in kg
Q= m*Cv*(T1-T2);// in kJ
disp(Q,"Heat extracted from the gas in kJ is : ")
// From V1/T1= V2/T2
V2= V1*T2/T1;// in m^3
disp(V2,"The final volume of the gas in m^3 is : ")
