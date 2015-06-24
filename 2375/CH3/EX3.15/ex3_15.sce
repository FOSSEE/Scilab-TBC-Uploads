// Exa 3.15
clc;
clear;
close;
format('v',5)
// Given data
V_CC =12;// in V
R_C = 4.3;// in k ohm
V_CE = 4;// in V
V_BE = 0.7;// in V
V_EE = 6;// in V
bita = 50;
// Applying KVL in base circuit, -V_BE - I_ER_E + V_EE = 0 or
I_ER_E = V_EE - V_BE;// in V
// Applying KVL in C-E circuit, V_CC-I_C*R_C-V_CE-I_ER_E+V_EE=0 or
I_C = (V_CC - V_CE - I_ER_E + V_EE)/R_C;// in mA
I_B = I_C/bita;// in mA
I_E = I_C+I_B;// in mA
R_E= I_ER_E/I_E;// in k ohm
disp(R_E,"The value of R_E in k ohm is : ")
del_IC= bita*(1+bita)*R_E;
del_ICO= bita*(1+bita)*R_E;
S= del_IC/del_ICO;
disp(S,"The value of stability factor, S is : ")
S_desh= bita/((1+bita)*R_E);
disp(S_desh,"The value of stability factor, S'' is : ")
