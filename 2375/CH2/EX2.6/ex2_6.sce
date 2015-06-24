// Exa 2.6
clc;
clear;
close;
format('v',6)
// Given data
V_BEsat = 0.8;// in V
V_BEact = 0.7;// in V
V_CEsat = 0.2;// in V
V_CC = 10;// in V
Beta = 100;
V = 5;// in V 
R_B = 50* 10^3;// in ohm
R_E = 2* 10^3;// in ohm
R_C = 3* 10^3;// in ohm
//Applying KVL to input loop,  V = R_B*I_B + V_BEact + I_C*R_E and I_C = Beta*I_B;
I_B = (V-V_BEact)/(R_B+R_E*Beta);// in A
// Applying KVL to collector circuit, V_CC= I_C*R_C+V_CEsat+I_E*R_E and I_E=I_C+I_B
I_C = (V_CC-V_CEsat-I_B*R_E)/(R_C+R_E);// in A
I_Bmin = I_C/Beta;// in A
if I_B < I_Bmin then
    disp("Since the value of I_B ( "+string(I_B*10^6)+ " µA) is less than the value of I_Bmin ( "+string(I_Bmin*10^6)+" µA), ")
    disp("So the transistor is in the active region.")
end

