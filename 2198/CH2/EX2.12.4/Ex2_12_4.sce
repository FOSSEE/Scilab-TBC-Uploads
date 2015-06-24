//Ex 2.12.4
clc;clear;close;
format('v',8);

//Given : 
W=2*10^-4*10^-2;//m
A=1*10^-6;//m^2
epsilon_r=16;//for Ge
epsilon_o=8.854*10^-12;//permitivity
q=1.6*10^-19;//Coulomb
CT=epsilon_r*epsilon_o*A/W;//
disp(CT*10^12,"Barrier capacitance(pF) : ");
//Answer is wrong in the textbook.
