//Example 4_7
clc;
clear;close;

//Given data: 
V=300;//V
R=4;//ohm
f=250;//Hz
ripple=20;//%
Iavg=30;//A

//Solution :
T=1/f;//s
E=0;//V
Imax_sub_Imin=ripple/100*Iavg;//A
L=V/Imax_sub_Imin/R/f;//H
disp(L,"Load Inductance(H)");
