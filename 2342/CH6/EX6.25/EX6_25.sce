//Exa 6.25
format('v',6)
clc;
clear;
close;
//Given data
Beta = 100;
V_CEsat = 0.2;// in V
R_B = 150;// in k ohm
R_C = 2;// in k ohm
V_CC  = 10;// in V
V_BEsat = 0.8;// in V
I_B = (V_CC - V_BEsat)/R_B;// in mA
I_C = (V_CC - V_CEsat)/R_C;// in mA
I_Bmin = I_C/Beta;// in mA
I_B=I_B*10^3;// in µA
I_Bmin=I_Bmin*10^3;// in µA
if I_B>I_Bmin then
    disp("Since the value of I_B ("+string(I_B)+"µA) is greater than the value of I_Bmin ("+string(I_Bmin)+"µA)");
    disp("So the transistor is in the saturation region.")
end
