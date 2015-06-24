//Exa 2.1
clc;
clear;
close;
//Given data : 
P=2;//no. of poles
f=60;//in Hz
N=3460;//in rpm
Ns=120*f/P;//in rpm
Slip=Ns-N;//in rpm
PercentageSlip=(Ns-N)*100/Ns;//in %
disp(Ns,"Synchronous speed in rpm : ");
disp(round(PercentageSlip),"Percentage Slip : ");