// Prob 1.18
clc;
clear;
close;
format('v',6);
// Given data :
Poles=2;//no. of poles
m=3;//no. of phase
f=50;//in Hz
Ep=5700;//in volt
Xs=1.5;//in ohm/phase
Iphase=Ep/Xs;//in Ampere
IL=Iphase;//in Ampere
disp(IL,"Line current in Ampere : ");
