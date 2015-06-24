//Exa 2.21
clc;
clear;
close;
//Given data :
P=6;//no. of poles
S=4;//slip in %
Output=20;//in KW
FrictionalLoss=250;//in watts
f=50;//in Hz
Ns=120*f/P;//in rpm
N=Ns-Ns*(S/100);//in rpm
disp(N,"Speed of motor(in rpm) : ");
MechPowerDeveloped=Output*10^3+FrictionalLoss;//in Watts
S=S/100;//unitless
RotorCopperLoss=(S/(1-S))*MechPowerDeveloped;//in watts
disp(RotorCopperLoss,"Rotor Copper Loss(in watts) : ");