//Exa 2.5
clc;
clear;
close;
//Given data : 
P=2;//no. of poles
f=50;//in Hz
S=4;//in %
//Part (i) : 
Ns=f/P;//in rps
Ns=Ns*60;//in rpm
disp(Ns,"Synchronous speed in rpm : ");
//Part (ii) :
disp("Slip = "+string(S)+"% or "+string(S/100));
//Part (iii) :
N=Ns*(1-S/100);//in rpm
disp(N,"Actual speed in rpm :");