// Example  1.71

clc;clear;close;

// Given data
format('v',7);
f1=50;//in Hz
phase=3;//no. of phase
P=6;//no. of poles
Nr=960;//in rpm
GearCuLoss=250;//in watt
Power=25;//in HP
MechLoss=1000;//in watts
I2=35;//in Ampere

//calculations
Ns=f1*120/P;//in rpm
S=(Ns-Nr)/Ns;//slip
//Formula : RotorCuLoss=S/(1-S)*MechDevPower
//3*I2^2*R2+GearCuLoss=S/(1-S)*(Power*746+MechLoss)
R2=(S/(1-S)*(Power*746+MechLoss)-GearCuLoss)/3/I2^2;//in ohm
disp(R2,"Resistance per phase in ohm : ");
