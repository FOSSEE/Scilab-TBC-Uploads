//Example 4_24
clc;
clear;
close;
format('e',9);
//given data : 
d=1.03;//mm
R=6.51;//ohm per 1000 ft.
n0=8.4*10^27;//electrons/m^3
I=2;//A
A=%pi/4*d^2*10^-6;//m^2
J=I/A;//A/m^2
e=1.6*10^-19;//C/electron
v0=J/n0/e;//m/s
disp(v0,"(a) Drift Velocity(m/s)");
R=R/1000/0.304;//ohm/m
E0=I*R;//V/m
mu=v0/E0;//m^2/V-s
disp(mu,"(b) Mobility(m^2/V-s)");
sigma=n0*e*mu;//(ohm-m)^-1
disp(sigma,"(c) Conductivity((ohm-m)^-1)")
//Answer wrong in the book. calculation mistake.
