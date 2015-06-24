// Exa 3.7
clc;
clear;
close;
// Given data
W = 89.947;// in kJ
T1 = 240;// in degree C
T1=T1+273;// in K
T2 = 115;// in degree C
T2=T2+273;// in K
C_v = W/(T1-T2);// in kJ/kg-K
disp(C_v,"The value of Cv in kJ/kg-K is");
V1 = 1;// in m^3 (assumed)
V2 = 2*V1;// in m^3
// (T1/T2) = (V2/V1)^(Gamma - 1)
Gamma=log10(T1/T2)/log10(V2/V1)+1;
Gamma = 1.4;
C_p = Gamma * C_v;// in kJ/kg-K
disp(C_p,"The value Cp in kJ/kg-K is");
