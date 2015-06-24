//Exa 2.32
clc;
clear;
close;
//Given data :
format('v',6);
VL=440;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Pin_rotor=80;//in KW
fr=100;//revolutions/min
fr=100/60;//in Hz
S=fr/f;//slip(unitless)
disp(S,"Slip : ");
Ns=120*f/P;//in rpm
N=Ns*(1-S);//in rpm(Speed of Rotor)
disp(round(N),"Rotor speed(in rpm) : ");
RotorCuLoss=S*Pin_rotor*10^3;//in watts
disp(RotorCuLoss/phase,"Rotor Cu Loss per phase(in watts) : ");
I2=65;//in Ampere
R2=(RotorCuLoss/phase)/I2^2;//in ohm
disp(R2,"Rotor resistance per phase(in ohm) : ");
Pout_rotor=Pin_rotor-RotorCuLoss/10^3;//in KW
disp(Pout_rotor/0.735,"Output power of rotor(in H.P.) : ");
//Note : answers of few part are not accurate in the book.