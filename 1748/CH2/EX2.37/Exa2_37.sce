//Exa 2.37
clc;
clear;
close;
//Given data :
format('v',7);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
MotorOutput=20;//in H.P.
MotorOutput=20*735.5;//in watts
S=4;//full load slip in %
MechLosses=500;//in watts
Pdev_rotor=MotorOutput+MechLosses;//in watts
S=S/100;//fractional slip
RotorI2RLoss=(S/(1-S))*Pdev_rotor;//in watts
disp(RotorI2RLoss,"Rotor I2R Loss(in watts) :");
Ns=120*f/P;//in rpm
Nr=Ns-Ns*S;//in rpm
disp(Nr,"Rotor speed(in rpm) :");