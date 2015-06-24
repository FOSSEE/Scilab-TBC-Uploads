// Exa 3.9
clc;
clear;
close;
// Given data
Gamma = 1.41;
C_v = 0.703;// in kJ/kg-K
P1 = 105;// in kN/m^2
P2 = 2835;// in kN/m^2
T1 = 15;// in degree C
T1 = T1 + 273;// in K
m = 0.2;// in kg
// Formula T2/T1 = (P2/P1)^((Gamma-1)/Gamma)
T2 = T1*(P2/P1)^((Gamma-1)/Gamma);// in K
T2 = T2 - 273;// in degree C
disp(T2,"The final temperature in degree C is");
T2 = T2+273;// in K
I_E = m*C_v*(T2-T1);// in kJ
disp(I_E,"Change in internal energy in kJ is");
W = I_E;// in kJ
disp(W,"Work done in kJ is"); 

// Note: There is an error to calculate the value of T2, and this wrong value is putted to evaluate the value of Change in internal energy but the value of Change in internal energy is calculated correc.
