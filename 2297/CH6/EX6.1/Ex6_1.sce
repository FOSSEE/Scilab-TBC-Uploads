//Example  6.1// Terminal voltage 
clc;
clear;
close;
//given data :
format('v',7)
Z=440;// number of lap
N=900;// revolutions in rpm
fi=0.07;//fluxin Wb
P=4;// number of pole
A=4;//constant
Ia=50;// armature current in Amperes
E=462;//voltage in V
E=(P*fi*Z*N)/(60*A);//general voltage in volts
R=0.002;// resistance in ohm
C=110;// conductors
Re=C*R;//resistance of each path in ohm
Ra=Re/A;//armature resistance in ohm
V=E-(Ia*Ra);//terminal voltage in volts
disp(V,"Terminal voltage,(V) = ")
