//Exa 2.43
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=6;//no. of poles
R2=0.2;//rotor resistance per phase in ohm
Nr=960;//in rpm
Nr_dash=600;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-Nr)/Ns;//slip(unitless)
Sdash=(Ns-Nr_dash)/Ns;//slip(unitless)
//Let the new value of resistance is R2dash=(R+0.2)
R=R2*(Sdash/S)-R2;//Resistance to be added in ohm
disp(R,"Resistance to be added(in ohm) : ");