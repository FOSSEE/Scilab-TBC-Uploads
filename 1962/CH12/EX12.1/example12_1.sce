
//example 12.1
//page 443
clc; funcprot(0);
//initialisation of variable
Q=0.25;
Gamma=9810*0.8;
pi=3.14;
H=25;
T=350;//torque
N=1800;//rpm
omega=N/60*2*pi;
neta=Gamma*Q*H/T/omega;
disp(neta*100,"efficiency (%)");
clear
