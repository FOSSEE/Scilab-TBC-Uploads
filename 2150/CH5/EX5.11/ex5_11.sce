// Exa 5.11
clc;
clear;
close;
// Given data
R_E = 1;// in kohm
R_E = R_E * 10^3;// in ohm
R_L = 3.3;// in kohm
R_L = R_L * 10^3;// in ohm
r_e = (R_E*R_L)/(R_E+R_L);// in ohm
V_CC = 15;// in V
R2 = 2.2;// in K ohm
R2 = R2 * 10^3;// in ohm
R1 = R2;// in ohm
V_B = (V_CC*R2)/(R1+R2);// in V
V_BE = 0.7;// in V
R_E = 1;// in K ohm
R_E = R_E * 10^3;// in ohm
I_E = (V_B-V_BE)/R_E;// in A
V1 = 25*10^-3;// in V
r_e1 = V1/I_E;
bita = 200;
Zin_base = bita*(r_e+r_e1);// in ohm
disp(Zin_base*10^-3,"The input impedence of the base in kΩ is : ")
Zin_stage = (R1*R2*Zin_base)/(R1*R2+R2*Zin_base+R1*Zin_base);// in ohm
disp(Zin_stage*10^-3,"The input impedance of the stage in kΩ is");
