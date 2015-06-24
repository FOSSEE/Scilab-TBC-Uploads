//chapter 6
//page no181
//Ex6_13
//given
clear;clc;
dV=50;              //in mV
di=3;           //in Amp
Lcable=15;          //in nH
fL=dV*10^-3/di/2/%pi/Lcable/10^-9;
printf("fLcable = %0.0f kHz",fL/1000);
