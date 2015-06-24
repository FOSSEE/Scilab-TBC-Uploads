//problem 2.3
clc;
clear;
close;
//given data :
Pa=6;//No. of alternator poles
N=1000;//in rpm
Pm=16;//No. of motor poles
S=2.5;//in %
//Formula : N=120*f/Pa;//in rpm
f=N*Pa/120;//in Hz
Ns=120*f/Pm;//in rpm
disp(Ns,"Synchronous speed in rpm : ");
//formula : S=(Ns-Nr)/Ns*100
Nr=Ns-S/100*Ns;//in rpm
disp(Nr,"Actual speed of motor in rpm : ");
