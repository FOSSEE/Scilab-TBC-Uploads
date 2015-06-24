//chapter 6
//page no184
//Ex6_18
//given
clear;
clc;
dV=40;              //in mV
di=3;           //in Amp
LT=0.05;          //in nH
fH=dV*10^-3/di/2/%pi/LT/10^-9;
printf("\n fCdecoupling(high) = %0.1f MHz\n ",fH/10^6);         //Result
