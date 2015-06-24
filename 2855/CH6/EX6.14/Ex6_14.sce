//chapter 6
//page no181
//Ex6_14
//given
clear;clc;
dV=50;              //in mV
di=4;           //in Amp
fL=120;         //in kHz
Lcable=dV*10^-3/di/2/%pi/fL/10^3;
printf("\n The maximum allowed parasitic cable inductance (Lcable) must not exceed %0.1f nH",Lcable*10^9);
