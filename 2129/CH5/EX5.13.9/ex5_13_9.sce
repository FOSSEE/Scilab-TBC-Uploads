//Exa 5.13.9
clc;
clear;
close;
//Given data
bita = 100;
V_CE = 0.2;//in V
V_BE = 0.8;// in V
R_C= 500;// in Ω
R_B= 44*10^3;// in Ω
R_E= 1*10^3;// in Ω
V_CC= 15;// in V
V_GE= -15;// in V
// Applying KVL to collector circuit
// V_CC-V_GE - I_Csat*R_C-V_CE-I_E*R_E=0, but I_Csat= bita*I_Bmin and I_E= 1+bita
I_Bmin= (V_CC-V_GE-V_CE)/(R_C*bita+(1+bita)*R_E);// in A
// Applying KVL to the base emitter circuit
// V_BB-I_Bmin*R_B-V_BE-I_E*R_E + V_CC=0
V_BB= I_Bmin*R_B + V_BE + (1+bita)*I_Bmin*R_E-V_CC;// in V
disp(I_Bmin*10^3,"The value of I_B(min) in mA is : ")
disp(V_BB,"The value of V_BB in volts is : ")
