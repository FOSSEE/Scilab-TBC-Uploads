//chapter 6
//page no182
//Ex6_15
//given
clear;
clc;
dV=40;              //in mV
di=2.5;           //in Amp
Lbypas=0.5;          //in nH
fL=dV*10^-3/di/2/%pi/Lbypas/10^-9;
printf("fHnoise = %0.1f MHz",fL/10^6);
