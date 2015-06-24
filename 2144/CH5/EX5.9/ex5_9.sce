// Exa 5.9
clc;
clear;
close;
// Given data
C_P = 0.966;// in kJ/kg-K
C_v = 0.712;// in kJ/kg-K
T1 = 83;// in  degree C
T1  =T1 + 273;// in K
T3 = 1800;// in degree C
T3 = T3+273;// in K
r = 13;
Gamma = 1.4;
T2 = T1 * (r)^(Gamma-1);// in K
disp(T2-273,"Temperature at the end of compression in °C is");
Rho = T3/T2;
T4 = ((Rho)^(Gamma)) * T1;// in K
disp(T4-273,"Temperature at the end of expansion in °C is");
Q = C_P * (T3-T2);// in kJ
disp(Q,"Heat supplied at constant pressure in kJ is");
Q1 = C_v * (T4-T1);// in kJ
disp(Q1,"Heat rejected at constant volume in kJ is");
Eta = ((Q-Q1)/Q) * 100;// in %
disp(Eta,"Thermal efficiency in % is"); 

// Note: The answer in the book is not accurate
