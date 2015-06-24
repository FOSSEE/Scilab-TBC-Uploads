// Exa 6.6
format('v',6)
clc;
clear;
close;
// Given data
I_E= 10;// in mA
Beta= 100;
alpha= Beta/(1+Beta);
// Formula alpha= I_C/I_E;
I_C= alpha*I_E;// in mA
I_B= I_E-I_C;// in mA
disp(I_B,"The base current in mA is : ")
disp(I_C,"The collector current in mA is : ")

// Note: In the book the calculated value of I_B is not correct, so the answer in the book is not accurate
