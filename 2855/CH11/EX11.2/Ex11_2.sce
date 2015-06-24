//Chapter 11
//page no 410
//given
clc;
clear all;
K0=2*%pi*625;           //in MHz/V
Ip=0.6;             //in mA
N=64;           
w=2.44;             //in Mhz
Z=5;
Vout=5;         //in V
C=(4*K0*10^6*Ip*10^-3*Z)/(2*%pi*N*w*w*10^12);
printf("\n The value of capacitance is %0.0f nF",C*10^9)
