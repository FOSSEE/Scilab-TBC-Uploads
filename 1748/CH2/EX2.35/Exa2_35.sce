//Exa 2.35
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
Efficiency=85;//in %
OutputPower=17;//in KW
OutputPower=17*10^3;//in watts
StatorLosses=900;//in watt
MechLosses=1100;//in watt
Pin=OutputPower/(Efficiency/100);//in watts
//Stator input or rotor input :
Pin_rotor=Pin-StatorLosses;//in watts
P_MechDev=OutputPower+MechLosses;//in watts
RotorCuLosses=Pin_rotor-P_MechDev;//in watts
S=RotorCuLosses/Pin_rotor;//slip(unitless)
disp(S,"Slip :");
Ns=120*f/P
N=Ns*(1-S);//in rpm(Speed of Motor)
Omega=2*%pi*N/60;//angular speed in rad/sec
Torque=P_MechDev/Omega;//in Nm
disp(Torque,"Torque developed(in Nm) :");
Tm=OutputPower/Omega;//in Nm
Tm=Tm/9.81;//in Kg-meter
disp(Tm,"Torque at the shaft(in Kg-meter) :");