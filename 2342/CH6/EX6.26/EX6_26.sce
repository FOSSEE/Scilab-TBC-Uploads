//Exa 6.26
format('v',6)
clc;
clear;
close;
//Given data
Beta = 100;
V_CE = 0.2;//in V
V_BE = 0.8;// in V
R_C= 500;// in Ω
R_B= 44*10^3;// in Ω
R_E= 1*10^3;// in Ω
V_CC= 15;// in V
V_GE= -15;// in V
// Applying KVL to collector circuit, V_CC-V_GE - I_Csat*R_C-V_CE-I_E*R_E=0, but I_Csat= Beta*I_Bmin and I_E= 1+Beta
// Minimum value of base current,
I_Bmin= (V_CC-V_GE-V_CE)/(R_C*Beta+(1+Beta)*R_E);// in A
// Applying KVL to the base emitter circuit, V_BB-I_Bmin*R_B-V_BE-I_E*R_E + V_CC=0
// The value of V_BB,
V_BB= I_Bmin*R_B + V_BE + (1+Beta)*I_Bmin*R_E-V_CC;// in V
I_Bmin= I_Bmin*10^3;//in mA
disp(I_Bmin,"The value of I_B(min) in mA is : ")
disp(V_BB,"The value of V_BB in volts is : ")
