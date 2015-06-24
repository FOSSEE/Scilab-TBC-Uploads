//problem 2.17
clc;
clear;
close;
//given data :
format('v',6);
m=3;//no. of phase
P=6;//no. of poles
f=50;//in Hz
Pin=20;//in KW
N=960;//in rpm
R2=1/3;//in ohm/phase
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//unitless
RotCuLoss=S*Pin*1000;//in Watts
RotCuLoss=S*Pin*1000/m;//in Watts/phase
//Formula : I2^2*R2=RorCuLoss per phase
I2=sqrt(RotCuLoss/R2);//in Ampere
disp(I2,"Rotor current in Ampere : ");
