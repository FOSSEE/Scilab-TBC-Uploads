// Exa 6.5
format('v',6)
clc;
clear;
close;
// Given data
alpha= 0.950;
Beta= alpha/(1-alpha);
disp(Beta,"For alpha = 0.950, the value of beta is : ")
Beta= 100;
alpha= Beta/(1+Beta);
disp(alpha,"For beta = 100, the value of alpha is : ")
