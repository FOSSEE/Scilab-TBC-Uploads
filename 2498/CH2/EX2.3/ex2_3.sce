// Exa 2.3
clc;
clear;
close;
format('v',6)
// Given data
V1 = 230;// in V
N2= 1;
N1 = 4;
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
Vd = 0.7;// in V
// V_LDC = (Vm-Vd)/%pi;// in V
V2 = V1*(N2/N1);// in V
// Vm = sqrt(2)*Vrms;
Vm = sqrt(2)*V2;// in V
// The output dc voltage 
V_LDC = (Vm-Vd)/%pi;// in V
disp(V_LDC,"The output dc voltage in V is");
// The current for a load resistance 
I_LDC = V_LDC/R_L;// in A
I_LDC = I_LDC * 10^3;// in mA
disp(I_LDC,"The current for a load resistance in mA is");
