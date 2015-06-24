// Exa 3.7
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 25;// in V
R_B = 180;// in k ohm
R_C = 820*10^-3;// in k ohm
R_E = 200*10^-3;// in k ohm
bita = 80;
V_BE = 0.7;// in V
// Applying KVL to B-E loop, V_CC-I_B*R_B-V_BE-I_E*R_E=0 or 
I_C= (V_CC-V_BE)/((R_B+R_E)/bita-R_E);// in A   (on putting I_B= I_C/bita and I_E= I_B+I_E)
disp(I_C,"The collector current in mA is");
V_CE = V_CC - (I_C*R_C);// in V
disp(V_CE,"The collector to emmiter voltage in V is");
S = (1 + bita)/( 1 + ( (bita*R_E)/(R_B+R_E) ) );
disp(S,"Current stability factor is");
Sdas = -bita/( R_B + R_E*(1+bita) );
disp(Sdas,"The voltage stability factor is");
