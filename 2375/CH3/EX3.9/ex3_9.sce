// Exa 3.9
clc;
clear;
close;
format('v',6)
// Given data
V_CEQ = 5;// in V
I_CQ = 5;// in mA
V_CC = 12;// in V
bita = 120;
I_C = I_CQ;// in mA
V_BE = 0.7;// in V
I_B= I_C/bita;// in mA
// V_CC - (I_C+I_B)*R_C - V_CE = 0 or
R_C= (V_CC-V_CEQ)/(I_C+I_B);// in k ohm
// Applying KVL to base circuit, V_CC - (I_C+I_B)*R_C - I_B*R_B - V_BE = 0 or 
R_B= (V_CEQ-V_BE)/I_B;// in k ohm
disp(R_C,"The value of R_C in k ohm is");
disp(R_B,"The value of R_B in k ohm is");
