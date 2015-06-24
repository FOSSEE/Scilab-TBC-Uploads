// Exa 7.3
clc;
clear;
close;
format('v',7)
// Given data
V_CC = 12;// in V
Pout = 88;// in mW
Plosses = 8;// in mW
Pin = Pout+Plosses;// in mW
Pin = Pin * 10^-3;// in W
I_C = Pin/V_CC;// in A
Gm = 10;// in mA/V
Gm = Gm * 10^-3;// in A/V
V_B = I_C/Gm;// in V
ratio = V_CC/V_B;// Transformer winding turn ratio
disp(ratio,"The Transformer winding turn ratio is");
