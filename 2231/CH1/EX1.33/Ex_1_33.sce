//Example 1_33
clc;
clear;close;

//Given data: 
RL=10;//ohm
V=100;//V
t_off=50*10^-6;//s
C=t_off/RL/log(2);//F
disp(C,"Value of C(F)");
