// Example  1.68

clc;clear;close;

// Given data
format('v',7);
Pis=60;//in KW
phase=3;//no. of phase
S=3;//in %
StatorLaser=1;//in KW

//calculations
S=S/100;//slip 
StatorOutput=Pis-StatorLaser;//in KW
RotorInput=StatorOutput;//in KW
RotorCuLoss=S*RotorInput;//in KW
RotorCuLoss_phase=S*RotorInput/phase;//in KW/phase
disp(RotorCuLoss_phase,"Rotor Copper loss per phase in KW : ");
MechPower=RotorInput-RotorCuLoss;//in KW
disp(MechPower,"Total mechanical lpower devloped in KW : ");
