// Exa 4.37
format('v',6)
clc;
clear;
close;
// Given data
Beta = 100;
Rth = 1.8;// in k ohm
V_CC = 10;// in V
R2 = 2.2;// in k ohm
R2 = R2 * 10^3;// in ohm
R1 = 10;// in k ohm
R1 = R1 * 10^3;// in ohm
R_C=3.6*10^3;// in ohm
R_E = 1;// in k ohm
R_E = R_E * 10^3;// in ohm
V_BE = 0.7;// in V
Vth = (R2/(R1+R2))*V_CC;// in V
Rth = (R1*R2)/(R1+R2);// in ohm
// Applying KVL for input loop, Vth = (I_B*Rth)+V_BE+(I_E*R_E) or 
I_E = (Vth-V_BE)/( R_E+(Rth/(Beta+1)) );// in A   (On putting I_E = (Beta+1)*I_B)
I_E= I_E*10^3;// in mA
disp(I_E,"The value of I_E in mA is");
I_B =I_E/(Beta+1);// in mA
I_C= I_E-I_B;// in mA
//Applying KVL for output loop, V_CC = (I_C*R_C) + V_CE + (I_E*R_E)
V_CE = V_CC - (I_C*10^-3*R_C) - (I_E*10^-3*R_E);// in V
disp(V_CE,"The value of V_CE in V is");
