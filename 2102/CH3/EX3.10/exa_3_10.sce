// Exa 3.10
clc;
clear;
close;
// Given data
I_F= 100;// in mA
I_F=I_F*10^-3;// in A
V_F= 0.75;// in V
R_F= V_F/I_F;// in ohm
disp(R_F,"Forward resistance in ohm is ")
// At
V_R= 50;// in V
I_R= 100;// in nA
I_R= I_R*10^-9;// in A
R_R= V_R/I_R;// in ohm
disp(R_R*10^-6,"Reverse resistance in Mohm is ")
