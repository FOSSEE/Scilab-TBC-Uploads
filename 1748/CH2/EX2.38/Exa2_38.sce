//Exa 2.38
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
R2=0.02;//in ohm
X2=0.1;//in ohm
S=R2/X2;//slip(unitless)
Ns=120*f/P;//in rpm
Nr=Ns-Ns*S;//in rpm
//At starting S=1
S=1;//slip
//Formula : T=K*S*R2/(R2^2+X2^2)
//Starting torque, Tst=K*R2/(R2^2+S^2*X2^2)
//Maximum torque, Tm=K/(2*X2)
//Tst=(2/3)*Tm : gives a equation
//100*R2^2-30*R2+1=0
a=100;b=-30;c=1;
R21=(-b+sqrt(b^2-4*a*c))/(2*a);//in ohm
R22=(-b-sqrt(b^2-4*a*c))/(2*a);//in ohm
//This R2 is the value of rotor circuit resistance.
RotWinResistance=0.02;//in ohm per phase
Extra_R1=R21-RotWinResistance;//in ohm
Extra_R2=R22-RotWinResistance;//in ohm
disp("Extra Resistance(in ohm) : "+string(Extra_R1)+" ohm or "+string(Extra_R2)+" ohm.");