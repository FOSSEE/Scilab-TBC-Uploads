//Exa 2.39
clc;
clear;
close;
//Given data :
format('v',7);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
MotorShaftOutput=20;//in H.P.
MotorShaftOutput=20*735.5;//in watts
MechLosses=MotorShaftOutput*2/100;//in watts(2% of the output)
Pdev_rotor=MotorShaftOutput+MechLosses;//in watts
S=3;//slip in %
S=S/100;//fractional slip
RotorI2RLoss=(S/(1-S))*Pdev_rotor;//in watts
disp(RotorI2RLoss,"Rotor I2R Loss(in watts) :");
disp("Rotor iron loss at 3% slip is very small and can be neglected.");
RotorInput=Pdev_rotor+RotorI2RLoss;//in watts
disp(RotorInput,"Rotor Input(in Watts) :");
Ns=120*f/P;//in rpm
Nr=Ns-Ns*S;//in rpm
Nr=Nr/60;//in rps
T=MotorShaftOutput/(2*%pi*Nr);//in Nm
disp(T,"Output torque(in Nm) : ");