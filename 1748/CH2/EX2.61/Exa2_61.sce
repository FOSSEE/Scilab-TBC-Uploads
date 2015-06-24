//Exa 2.61
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
Pin=60;//in KW
StatorLoss=1.2;//in KW
WindingLoss=1.8;//in KW
S=4;//in %
S=4/100;//in fraction
Ns=120*f/P;//in rpm
Nr=Ns-Ns*S;//in rpm
disp(Nr,"Rotor speed(in rpm) :");
Pin_rotor=Pin-StatorLoss;//in KW
RotorCuLoss=S*Pin_rotor;//in KW
disp(RotorCuLoss,"Rotor Cu Loss(in KW) : ");
Pout_rotor=Pin_rotor-WindingLoss-RotorCuLoss;//in KW
Efficiency=(Pout_rotor/Pin)*100;//in %
disp(round(Efficiency),"Efficiency(in %) :");
HP=Pout_rotor*10^3/735.5;//in H.P.
disp(HP,"Horse Power(inH.P.) :");