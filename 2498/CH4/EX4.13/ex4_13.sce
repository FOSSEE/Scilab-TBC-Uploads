// Exa 4.13
clc;
clear;
close;
format('v',5)
// Given data
Beta = 44;
R_L = 1.51 * 10^3;// in ohm
R_E = 270;// in ohm
V_CC = 4.5;// in V
R2 = 2.7 * 10^3;// in ohm
R1 = 27 * 10^3;// in ohm
R_C = 1.5 * 10^3;// in ohm
Vth = V_CC * (R2/(R1+R2));// in V
Rth = (R1*R2)/(R1+R2);// in ohm
// Applying KVL to input circuit, Vth - (I_B*Rth) - V_BE - (I_E*R_E) = 0 or
I_C = (Vth*Beta)/(Rth + (Beta*R_E));// in A     (On putting I_C= Beta*I_B and V_BE=0)
//Applying KVL to output side, V_CC - (I_C*R_C) - V_CE - (I_E*R_E) = 0;
V_CE = V_CC - (I_C*(R_C+R_E));// in V
S = (Beta+1)*( (1+(Rth/R_E))/(Beta+1+(Rth/R_E)) );
I_C= I_C*10^3;// in mA
disp(S,"The stability factor is");
disp("The quiescent points : "+string(I_C)+" mA, "+string(V_CE)+" V")

// Note: In the book the calculated value of V_CE is correct as well as coding output, but at last they print wrong value (4.01 V)
