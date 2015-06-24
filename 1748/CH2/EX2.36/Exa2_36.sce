//Exa 2.36
clc;
clear;
close;
//Given data :
format('v',7);
VL=500;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Pin_stator=50;//in KW
Statorlosses=2;//in KW
MechLosses=1;//in KW
Pin_rotor=Pin_stator-Statorlosses;//in KW
S=3;//in %
RotorI2RLoss=(S/100)*Pin_rotor;//in KW
disp(RotorI2RLoss,"Rotor I2R Loss(in KW) :");
disp("Rotor core loss at 3% slip is very less and can be neglected.");
Power_dev=Pin_rotor-RotorI2RLoss;//in KW
disp(Power_dev/0.7355,"Power developed by the rotor(in H.P.) : ");
Outputpower=Power_dev-MechLosses;//in KW
Efficiency=Outputpower/Pin_stator;//unitless
disp(Efficiency*100,"Efficiency of the motor(in %) :");