clc;
clear;
V=420;
f=50;
P=6;
Z=1+(2*%i);//Both stator and rotor referred leakage impedance
J=3;//Total inertia of the drive
S1=1.96;
S2=1;
r1=1;
r2=1;
x1=4;
ti=((((r1^2)+(x1^2))/(2*r2))*((S2^2)-(S1^2)))+(2*r1*(S2-S1))+(r2*log(S2/S1));
Ws=2*%pi*(1000/60);
t=J*(105^2)*(-ti/(V^2));
disp(Ws,t,'The total time and speed is:')
