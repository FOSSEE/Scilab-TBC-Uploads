//Example 4.2 : resistance of each coil
clc;
clear;
close;
//given data :
V=300; // voltage in volts
W=360; // power lost in one coil in watt
I=6; // current in A
R1=V/I;
R=V^2/W;
a=(1/R1)-(1/R);
r2=1/a;
disp(R,"resistance of 360W coil1,R(ohm) = ")
disp(r2,"resistance of second coil2,r2(ohm) = ")
