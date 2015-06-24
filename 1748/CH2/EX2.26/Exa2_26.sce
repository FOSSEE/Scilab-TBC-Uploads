//Exa 2.26
clc;
clear;
close;
//Given data :
format('v',6);
Pin_rotor=20;//Power input of rotor in KW
phase=3;//no. of phase
P=6;//no. of poles
f=50;//in Hz
N=960;//in rpm(Actual speed of motor)
Ns=120*f/P;//synchronous speed in rpm
S=(Ns-N)/Ns;//unitless
RotorCuLoss=S*Pin_rotor*10^3;//in watts
RotorCuLoss=RotorCuLoss/phase;//in watts/phase
R2=1/3;//in ohm(Rotor resistance per phase)
I2=sqrt(RotorCuLoss/R2);//in Ampere
disp(I2,"Motor current per phase(in Ampere) :");