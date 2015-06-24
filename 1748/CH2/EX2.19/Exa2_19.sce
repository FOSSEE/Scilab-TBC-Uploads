//Exa 2.19
clc;
clear;
close;
//Given data :
P=6;//no. of poles
f=50;//in Hz
fr=3;//in Hz
R2=0.5;//in ohm
N=475;//in rpm
RotorInput=111.9;//in KW
Ns=120*f/P;//in rpm
S=fr*100/f;//unitless
disp(S,"% Slip : ");
N=Ns*(1-S/100);//in rpm
disp(N,"Speed of motor in rpm : ");
RotorCopperLoss=RotorInput*S/100;//in KW
RotorCopperLoss=RotorCopperLoss/3;//in KW/Phase
disp(RotorCopperLoss,"Rotor Copper Loss per phase(in KW) : ");