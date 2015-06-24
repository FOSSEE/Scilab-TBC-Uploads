// Caption: Finding efficiency at rated voltage and frequency with starting winding open
clear;
close;
clc;
s=0.05;
//rotor speed
speed=(1-s)*1800;//in r/min
//torque
T=147/179;// in N.m

//Efficiency
op=244;//output
ip=147;//input
eff=ip/op;
disp(eff,'Efficiency=')
