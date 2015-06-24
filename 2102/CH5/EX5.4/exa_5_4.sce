// Exa 5.4
clc;
clear;
close;
// Given data
D= 0.102;// in cm
sigma_P= 0.286;// in Ωcm
q= 1.6*10^-19;// in C
miuP= 500;
Vb= 5+0.35;//in V
A= %pi*D^2/4;// in cm^2
N_A= sigma_P/(q*miuP);// at/c
C_T= 2.92*10^-4*(N_A/Vb)^(1/2)*A;// 
disp(C_T,"The value of transition in pf/cm^2")
