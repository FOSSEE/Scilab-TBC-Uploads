// Example 3.13

clear; clc; close;

format('v',7);
// Given data
J=3*10^-4;//in Kgm^2;
f1=1000;//in Hz
f2=2000;//in Hz
delt=100;//in ms
Tf=0.05;//in N-m
Qs=1.8;//in degree

//Calculations
delt=100*10^-3;//in sec
Qs=Qs*%pi/180;//in radian
w1=Qs*f1;//in rad/sec
w2=Qs*f2;//in rad/sec
dwBYdt=(w2-w1)/delt;//
Tm=J*dwBYdt+Tf;//in N-m
disp(Tm,"Motor Torque in N-m : ");
