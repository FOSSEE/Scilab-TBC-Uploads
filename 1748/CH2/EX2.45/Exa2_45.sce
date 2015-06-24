//Exa 2.45
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
R2=0.2;//rotor resistance per phase in ohm
N1=960;//Full load speed in rpm
Ns=120*f/P;//in rpm
S1=(Ns-N1)/Ns;//Full load slip(unitless)
N2=N1*(1-10/100);//New speed in rpm(reduced 10%)
S2=(Ns-N2)/Ns;//New slip(unitless)
//Formula : S=RotorCuLoss/Pin_rotor=3*I2^2*R2/Pin_rotor
//Let the additional resistance is R
R=R2*S2/S1-R2;//Resistance to be added in ohm
disp(R,"Additional Rotor Resistance(in ohm) : ");