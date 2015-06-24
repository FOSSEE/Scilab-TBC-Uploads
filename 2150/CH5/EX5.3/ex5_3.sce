// Exa 5.3
clc;
clear;
close;
// Given data
A_V = 117;
r_e = 22.7;// in ohm
bita = 300;
Zin_base = bita*r_e;// in ohm
R1 = 2.2*10^3;// in  ohm
R2 = 10*10^3;// in ohm
Zin_stage = (Zin_base*R1*R2)/(Zin_base*R1+R1*R2+R2*Zin_base);// in ohm 
R = 600;// in ohm
V = 2;// in mV
V_in = (Zin_stage/(R+Zin_stage))*V;// in mV
V_out = A_V * V_in;// in mV
disp(round(V_out),"The output voltage in mV is");
