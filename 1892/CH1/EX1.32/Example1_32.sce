// Example 1.32

clear; clc; close;
format('v',7);
// Given data
f=50;//in Hz
P=4;//no. of poles
VL=400;//in volt
E2=100;//in volt
R2=50;//in milli ohm
X2=0.5;//in ohm

//Calculations
R2=R2*10^-3;//in ohm
Sm=R2/X2;//Maximum Slip
ns=(120*f/P)/60;//in rpS
Tmax=3/2/%pi/ns*Sm*E2^2*R2/(R2^2+(Sm*X2)^2);//in N-m
disp(Tmax,"Maximum Torque in N-m : ");
disp(Sm,"Slip at which Tmax occur : ");
