//Example 4_15
clc;
clear;
close;
format('e',9)
//given data : 
A=10^-5;//m^2
I=100;//A
n0=8.5*10^28;//m^-3
e=1.6*10^-19;//C///Charge on electron
//Formula : I=no*A*vd*e
vd=I/n0/A/e;//ms^-1
disp(vd,"Drift Velocity(ms^-1)")
