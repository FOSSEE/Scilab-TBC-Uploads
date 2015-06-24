
//example 9.3
//page 311
clc; funcprot(0);
//initialisation of variable
Q=0.1;
hf=5.43;//head loss
L=100;
nu=1.007*10^-6;//kinematic viscosity
pi=3.14;
g=9.81;
A=8*L*Q^2/hf/g/pi^2;
//using moody's chart
f=0.021;
D=(A*f)^0.2;
disp(D,"diameter of the pipe(m)=");
clear
