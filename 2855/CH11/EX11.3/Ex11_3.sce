//Chapter 11
//page no 410
//given
clc;
clear all;
K0=2*%pi*625;           //in MHz/V
Ip=0.35;             //in mA
N=64;           
w=2.44;         //in MHz
Z=5;
Vout=4;         //in V
C=22;           //in nF
Z=sqrt((2*%pi*N*w^2*C)/(4*Ip*K0*0.25))
printf("\n Zeta is = %0.0f" ,Z)

