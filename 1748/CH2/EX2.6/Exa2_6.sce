//Exa 2.6
clc;
clear;
close;
//Given data : 
P=4;//no. of poles
f1=50;//in Hz
fdash=1.5;//in Hz
S=fdash/f1;//unitless
disp(S,"Slip : ");
Ns=120*f1/P;//in rpm
N=Ns*(1-S);//in rpm
disp(N,"Speed of motor in rpm :");