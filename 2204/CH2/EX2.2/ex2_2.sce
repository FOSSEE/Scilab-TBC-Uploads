// Exa 2.2
clc;
clear;
close;
// Given data
I_b1 = 18;// in µA
I_b2 = 22;// in µA
I_b = (I_b1+I_b2)/2;// in µA
disp(I_b,"Input bias current in µA is ");
I_ios = abs(I_b1-I_b2);// in µA
disp(I_ios,"Input offset current in µA is");
