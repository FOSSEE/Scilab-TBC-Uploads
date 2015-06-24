//Exa 2.44
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
RotorIntResistance=0.1;//in ohm per phase
X2=1;//in ohm/phase
Rext=X2-RotorIntResistance;//in ohm
disp(Rext,"External resistance to be included(in ohm/phase) : ");