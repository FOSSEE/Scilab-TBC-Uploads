// Example 1.25

clear; clc; close;
format('v',7);
// Given data
V=440;//in volt
f=50;//in Hz
P=4;//no. of poles
X1=5.2;//in ohm
R2dash=1.2;//in ohm
X2dash=4.5;//in ohm

//Calculations
disp("Magnetic components not present. So, Rth=R1 & Xth=X1")
//Rth=R1;//in ohm
//Xth=X1;//in ohm
//Formula : R2dash/Sm=sqrt(X1^2+X2dash^2)
Sm=R2dash/(X1+X2dash);//Maximum Slip
I1=V/sqrt(3)/sqrt((R2dash/Sm)^2+(X1+X2dash)^2);//in Ampere
I2dash=I1;//in Ampere(Neglecting I0)
Ns=120*f/P;//in rpm
Tmax=3*I2dash^2*R2dash/Sm/2/%pi/Ns*60;//in N-m
disp(Tmax,"Maximum Torque in N-m ; ");
disp(Sm*100,"Maximum Slip in % : ");
