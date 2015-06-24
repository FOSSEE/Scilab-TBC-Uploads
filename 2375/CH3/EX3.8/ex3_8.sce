// Exsa 3.8
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 20;// in V
V_BE= 0.7;// in V
R_C = 4.7;//in k ohm
bita = 100;
R_B = 680;// in k ohm
I_C= poly(0,'I_C');// in mA
I_B= I_C/bita;// in  mA
// Applying KVL to C-B circuit, V_CC - (I_C+I_B)*R_C - I_B*R_B - V_BE = 0;
I_C= V_CC - (I_C+I_B)*R_C - I_B*R_B - V_BE;
I_C= roots(I_C);// in mA
I_B= I_C/bita;// in  mA
V_CEQ = V_CC - (I_C+I_B)*R_C;// in V
disp("Q point : "+string(V_CEQ)+" volts, "+string(I_C)+" mA")
