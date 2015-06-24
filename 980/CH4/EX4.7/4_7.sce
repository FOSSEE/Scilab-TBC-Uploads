clc;
clear;
format('v',11);
F=0.001*9.8*0.01/1;      //by the equilibrium condition and approximation of sin(a/2)=tan(a/2)
Q=(F*4*3.14*8.85*10^-12*0.02^2)^(1/2);
disp(Q,"charge on each ball(in coulomb)=");
