//Example 3.10 // quantity of electricity and time taken
clc;
clear;
close;
//given data :
d=0.1;//in m
l=.25;// in m
Tc=2;// thickness of coating in mm
D=8.9;//density of metal in gm/CC
C_density=160;//in A/sq
I_efficiency=0.9;
S=%pi*d*l;
m=S*Tc*10^-3*D*10^3;
Z=30.43*10^-8;// in kg/C
Q=(m/Z)/3600;// in A-h
Q_dash=Q/I_efficiency;
disp(Q_dash,"quantity of electricity,Q_dash(A-h) = ")
I=C_density*S;
t=Q_dash/I;
disp(t,"time required,t(hours) = ")
