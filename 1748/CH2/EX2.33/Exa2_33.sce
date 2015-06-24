//Exa 2.33
clc;
clear;
close;
//Given data :
format('v',6);
VL=440;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Pin_rotor=20;//in KW
N=960;//in rpm(Speed of Motor)
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip(unitless)
RotorCuLoss=S*Pin_rotor*10^3;//in watts
RotorCuLoss=RotorCuLoss/phase;//in watts/phase
R2=1/3;//Rotor Resistance in ohm per phase
I2=sqrt(RotorCuLoss/R2)
disp(I2,"Motor current per phase(in Ampere) :");