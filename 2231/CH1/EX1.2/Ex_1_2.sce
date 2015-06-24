//Example 1_2
clc;
clear;close;

//Given data
dv_dt=190;//V/µs
IC=8*10^-3;//A

//Solution :
C=IC/(dv_dt/10^-6);//F
disp(C,"Capacitance of depletion layer in F : ");
