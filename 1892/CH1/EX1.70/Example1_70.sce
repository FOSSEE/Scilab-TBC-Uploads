// Example  1.70

clc;clear;close;

// Given data
format('v',6);
V=440;//in Volt
f=50;//in Hz
phase=3;//no. of phase
P=6;//no. of poles
Pin=80;//rotor input in KW
f1=50;//in Hz
f2=100;//in rotation/min
I=65;//rotor current in Ampere

//calculations
f2=f2/60;//in Hz
S=f2/f1;//slip
disp(S,"Slip(p.u) : ");
Ns=120*f/P;//in rpm
Nr=Ns*(1-S);//in rpm
disp(Nr,"Rotor speed in rpm : ");
RotorCuLoss=S*Pin*1000;//in Watts
Pmd=Pin*1000-RotorCuLoss;//Mechanical powre developed /in watts
Pmd=Pmd/746;//in HP
disp(Pmd,"Mechanical power developed in HP : ");
RotorCuLoss_phase=RotorCuLoss/phase;//in watts/phase
disp(RotorCuLoss_phase,"Rotor Coopper Loss per phase in watts : ");
R2=RotorCuLoss_phase/I^2;//in ohm
disp(R2,"Rotor resistance per phase in ohm : ");
