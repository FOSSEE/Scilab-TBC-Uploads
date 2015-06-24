//Exa 2.27
clc;
clear;
close;
//Given data :
format('v',6);
V=500;//in volt
Pout_rotor=20;//Power output of rotor in H.P.
phase=3;//no. of phase
P=6;//no. of poles
f=50;//in Hz
N=995;//in rpm(Actual speed of motor)
cosfi=0.87;//powerfactor(unitless)
Ns=120*f/P;//synchronous speed in rpm
S=(Ns-N)/Ns;//unitless
disp(S,"Slip : ");
RotorCuLoss=(S/(1-S))*Pout_rotor*735.5;//in watts
disp(RotorCuLoss,"Rotor Cu Loss(in watts) : ");
Pin_rotor=RotorCuLoss/S;//in watts
disp(Pin_rotor/10^3,"Power input to rotor(in KW) :");
LineCurrent=Pin_rotor/(sqrt(3)*V*cosfi);//in Ampere
disp(LineCurrent,"Line Current(in A) :");
RotorFreq=S*f;//in Hz
disp(RotorFreq,"Rotor Frequency(in Hz) :");