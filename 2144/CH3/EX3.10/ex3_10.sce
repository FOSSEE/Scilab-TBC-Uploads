// Exa 3.10
clc;
clear;
close;
// Given data
P1= 100;// in N/m^2
T1 = 30;// in degree C
T1 = T1 + 273;// in K
C_v = 0.718;// in kJ/kg-K
//C_v= C_v*10^3;// in J/kg-K
R = 287.1;// in J/kg-K
d = 15;// in cm
l = 20;// in cm
V = (%pi/4)*(d)^2*l;// in cm^3
V = V * 10^-3;// in litre
Clear_V = 1.147;// clearance volume 
Vol = V+Clear_V;//volume of air at beginning of compression in litre
ROC = Vol/Clear_V;// Ratio of compression
P2 = P1*(Vol/Clear_V)^1.2;// in kN/m^2
disp(P2,"The pressure at the end of compression in kN/m^2 is");
T2 = (P2*Clear_V*T1)/(P1*Vol);// in K
T2 = T2 - 273;// in degree C
T1 = T1 - 273;// in degree C
T = T2-T1;// in degree C
disp(T,"The temperature at the end of compression in degree C is");
T1 = T1 + 273;// in K
m = (P1*Vol)/(R*T1);// in kg
I_E = m*C_v*T;// in kJ
disp(I_E,"The change in internal energy in kJ is");
