// Exa 6.3
format('v',6)
clc;
clear;
close;
// Given data
alpha= 0.987;
I_E= 10;// in mA
// Formula alpha= I_C/I_E;
I_C= alpha*I_E;// in mA
I_B= I_E-I_C;// in mA
disp(I_C,"The collector current in mA is : ")
disp(I_B,"The base current in mA is : ")
