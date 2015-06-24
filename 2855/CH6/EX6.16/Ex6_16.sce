//chapter 6
//page no182
//Ex6_16
//given
clear;
clc;
dV=50;              //in mV
di=2.5;           //in Amp
Cbypas=220;          //in microF
fL=di/(dV*10^-3*2*%pi*Cbypas*10^-6);
printf("fLnoise = %0.0f kHz",fL/1000);          //Result
