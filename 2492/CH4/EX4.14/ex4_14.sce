// Exa 4.14
format('v',5)
clc;
clear;
close;
// Given data
del_ic = 1.8;// in mA
del_ie = 1.89;// in mA
alpha = del_ic / del_ie;
bita = alpha/(1 - alpha);
// Change in base current,
del_ib = del_ic/bita;// in mA
del_ib = del_ib * 10^3;// in µA
disp(del_ib,"The change in I_B in µA is"); 

