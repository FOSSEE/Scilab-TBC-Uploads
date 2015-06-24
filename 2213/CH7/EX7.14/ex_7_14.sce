//Example 7.14: Energy consumption
clc;
clear;
close;
format('v',8)
//given data :
Vm=52;//max speed in kmph
t3=15.8;// duration of braking in sec
D=(1/2)*Vm*(t3/3600);
S=1400;// in m
S1=(S*10^-3)-D;
r=50;//in N/tonne
WeBY_W=1.1;
Ec=((0.01072*Vm^2*WeBY_W)/(S*10^-3))+(0.2778*r*(S1/(S*10^-3)));
disp(Ec,"energy consumption in Wh is")
