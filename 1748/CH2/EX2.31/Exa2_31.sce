//Exa 2.31
clc;
clear;
close;
//Given data :
format('v',6);
P=4;//no. of poles
phase=3;//no. of phase
N=1440;//in rpm(Actual speed of motor)
Power_dev=10;//Power developed in H.P.
VL=400;//in volt
cosfi=0.8;//powerfactor(unitless)
f=50;//in Hz
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//fractional slip(unitless)
disp(S,"Slip :");
Omega=N*2*%pi/60;//angular speed in radians/sec
Torque=Power_dev*735.5/Omega;//in N-meter
Torque=Torque/9.81;//in Kg-meter
disp(Torque,"Torque(in Kg-meter) :");
RotorCuLoss=(S/(1-S))*Power_dev*735.5;//in watts
disp(RotorCuLoss/3,"Rotor Cu Loss per phase(in watts) : ");
Pin_rotor=RotorCuLoss/S;//in watts
disp(Pin_rotor/10^3,"Power input to rotor(in KW) :");
LineCurrent=Pin_rotor/(sqrt(3)*VL*cosfi);//in Ampere
disp(LineCurrent,"Line Current(in A) :");