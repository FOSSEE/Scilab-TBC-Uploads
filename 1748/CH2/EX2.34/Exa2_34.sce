//Exa 2.34
clc;
clear;
close;
//Given data :
format('v',7);
VL=500;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Pout_rotor=20;//in H.P.
cosfi=0.87;//power factor
N=995;//in rpm(Speed of Motor)
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip(unitless)
disp(S,"Slip : ");
RotorCuLoss=(S/(1-S))*Pout_rotor*735.5;//in watts
disp(RotorCuLoss,"Rotor Cu Loss(in watts) :");
Pin_rotor=RotorCuLoss/S;//in watts
disp(Pin_rotor/10^3,"Power input to rotor(in KW) :");
IL=Pin_rotor/(sqrt(3)*VL*cosfi);//in Ampere
disp(IL,"Line current (in Ampere) :");
Rotorfreq=S*f;//in Hz
disp(Rotorfreq,"Rotor frequency(in Hz) :");