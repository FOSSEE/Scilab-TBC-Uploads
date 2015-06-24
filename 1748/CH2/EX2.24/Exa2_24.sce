//Exa 2.24
clc;
clear;
close;
//Given data :
format('v',6);
phase=3;//no. of phase
P=6;//no. of poles
Pin_rotor=80;//Power input of rotor in KW
f=50;//in Hz
fdash=100;//alternations per minute
fdash=100/60;//in Hz
S=fdash/f;//unitless
disp(S,"Slip : ");
Ns=120*f/P;//synchronous speed in rpm
N=Ns-Ns*S;//in rpm
disp(round(N),"Rotor Speed(in rpm) : ");
RotorCopperLoss=S*Pin_rotor*10^3;//in watts
//disp(RotorCopperLoss,"Rotor Copper Loss(in watts) : ");
CopperLoss=RotorCopperLoss/phase;//in watts/phase
disp(CopperLoss,"Copper Loss per phase(in watts) : ");
I2=60;//in Ampere
R2=CopperLoss/I2^2;//in ohm
disp(R2,"Rotorresistance per phase(in ohm) : ");
MechPowerDev=Pin_rotor*(1-S)*10^3/735.5;//in H.P.
disp(MechPowerDev,"Total mechanial power developed(in H.P.) : ") ;
//Note : Some answers are not accurate in the book.