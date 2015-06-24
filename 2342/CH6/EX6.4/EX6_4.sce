// Exa 6.4
format('v',6)
clc;
clear;
close;
// Given data
Beta= 100;
I_E= 10;// in mA
alpha= Beta/(1+Beta);
disp(alpha,"The value of alpha is : ")
// Formula alpha= I_C/I_E;
I_C= alpha*I_E;// in mA
I_B= I_E-I_C;// in mA
disp(I_C,"The collector current in mA is : ")
disp(I_B,"The base current in mA is : ")

// Note: The calculated value of alpha in the book is wrong, due to this the answer in the book is wrong.
