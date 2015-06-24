// Exa 3.10
clc;
clear;
close;
format('v',5);
// Given data
V_CC = 10;// in V
R_C = 1;// in k ohm
R_B = 100;//in k ohm
V_CE = 5;// in V
V_BE = 0.7;// in V
V_CB= V_CE-V_BE;// in V
I_B= V_CB/R_B;// in mA
// V_CC = (I_C+I_B)*R_C + V_CE = I_C*R_C + I_B*R_C + V_CE;
I_C =  (V_CC-V_CE-(I_B*R_C))/R_C;// in mA
bita= I_C/I_B;
S = (1 + bita)/( 1 + bita*( R_C/(R_B+R_C) ) );
disp(S,"The value of stability factor is");
S_fixed_bias= 1+bita;// stability factor for fixed bias circuit
disp(S_fixed_bias,"For the fixed bias circuit, the value of stability factor would have been")
disp("Thus collector to base circuit has a low value of S and hence provides better Q point stability")
