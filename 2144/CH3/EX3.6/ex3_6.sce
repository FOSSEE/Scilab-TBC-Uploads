// Exa 3.6
clc;
clear;
close;
// Given data
P1 = 2800000;// in N/m^2
P1 = P1 * 10^-6;// in MN/m^2
C_p = 1.024;// in kJ/kg-K
C_v = 0.7135;// in kJ/kg-K
V1 = 1;// in m^3. (asuumed )
V2 = 5*V1;// in m^3
T1 = 220;// in degree C
T1 = T1 + 273;// in K
Gamma = C_p/C_v;
P2 = (P1*(V1)^Gamma)/((V2)^Gamma);// in MN/m^2
disp(P2,"The final pressure in MN/m^2 is");
T2 = (P2/P1)*V2*T1;// in K
disp(T2-273,"The final temperature in degree C is");
R = C_p-C_v;// in kJ/kg-K
W = (R*(T1-T2))/(Gamma - 1);// in kJ
disp(W,"Work done in kJ is");
