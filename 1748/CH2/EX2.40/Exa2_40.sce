//Exa 2.40
clc;
clear;
close;
//Given data :
format('v',6);
VL=500;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Nr=975;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-Nr)/Ns;//slip
disp(S,"Slip :");
Pin_stator=40;//in KW
StatorLosses=1;//in KW
Pin_rotor=Pin_stator-StatorLosses;//in KW
RotorCuLosses=S*Pin_rotor;//in KW
disp(RotorCuLosses,"Rotor Cu Losses(in KW) :");
RotorOutput=Pin_rotor-RotorCuLosses;//in KW
OutputHP=RotorOutput/0.735;//in H.P.
disp(OutputHP,"Output Horse Power : ");
Efficiency=RotorOutput/Pin_stator;//unitless
disp(Efficiency*100,"Efficiency(in %) :");