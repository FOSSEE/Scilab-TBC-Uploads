// Exa 3.13
clc;
clear;
close;
// Given data
T1 = 40;// in degree C
T1 = T1  +273;// in K
P2 = 50;// in bar
P1 = 1;// in bar
Gamma = 1.4;
C_v = 0.718;// in kJ/kg-K
SpeHeat = 1.005;// in kJ/kg-K
HeatSupply= 125.6;// in kJ/kg
T2 = T1 * (P2/P1)^((Gamma-1)/Gamma);// in K
C_p = C_v * (T2-T1);// in kJ/kg
del_T = HeatSupply/SpeHeat;// in degree C
del_U = C_v * del_T;// in kJ/kg
disp(del_U,"Change in internal energy in kJ/kg is");
T3 = T2  + del_T;// in K
del_Phi = SpeHeat * log(T3/T2);// in kJ/kg-K
disp(del_Phi,"Change in entropy during constant pressure in kJ/kg-K is");
