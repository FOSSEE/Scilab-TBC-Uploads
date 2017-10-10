close();
clear;
clc;
//time period 'T, angular frequency 'w', amplitude ro maximum voltage 'Vm'
to = 5*10^(-3); //s
t1 = 15*10^(-3); //s
T = 10^(-2)*1/7;
w = 2*%pi/T; //rad/s
Vm = 2; //V
mprintf("v(t) = (%d sin w*(t-%0.3f)) *(u(t-%0.3f) - u(t-%0.3f))",Vm, to,to,t1);