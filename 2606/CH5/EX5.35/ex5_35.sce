//Page Number: 5.42
//Example 5.35
clc;
//Given,
n=24;
f=3.4D+3; //Hz
ts=1D-6; //Second

//(a) Spacing between succesive multiplexed pulses
fs=8000; //Samples per second
t1=1/fs;
t2=n+1; //One synchronizing bit

Tb=t1/t2;
//Actual Tb, as actual duration of each pulse is 1us
ATb=Tb-ts;
disp('Seconds',ATb,'Spacing between succesive multiplexed pulses');


//(b) Nyquist Rate of Sampling
f1=2*f;
T=1/f1; //Seconds

Tb1=T/t2;

ATb1=Tb1-ts;
disp('Seconds',ATb1,'Spacing between succesive multiplexed pulses using Nyquist rate of sampling');


