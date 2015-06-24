//Exa 5.14.8
clc;
clear;
close;
//Given data
bita = 100;
V_CEsat = 0.2;// in V
R_B = 150;// in kohm
R_C = 2;// in kohm
V_CC  = 10;// in V
V_BEsat = 0.8;// in V
I_B = (V_CC - V_BEsat)/R_B;// in mA
I_C = (V_CC - V_CEsat)/R_C;// in mA
I_Bmin = I_C/bita;// in mA
if I_B>I_Bmin then
    disp("Since the value of I_B ("+string(I_B*10^3)+"µA) is greater than the value of I_Bmin ("+string(I_Bmin*10^3)+"µA)");
    disp("So the transistor is in the saturation region.")
end
