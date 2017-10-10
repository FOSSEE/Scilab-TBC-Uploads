// Exa 5.25
format('v',7);clc;
clear;
close;
// Given data
Vs= 100;// in mV
Vf= 95;// in mV
Vs= Vs*10^-3;// in V
Vf= Vf*10^-3;// in V
Vo=10;// in V
Vi= Vs-Vf;// in V
Av= Vo/Vi;// in V/V
disp(Av,"Value of A in V/V is : ")
Bita= Vf/Vo;// in V/V
disp(Bita,"Value of Bita in V/V is : ")

// Note: In the book Calculation to find the value of Bita is wrong so the asnwer in the book is wrong
