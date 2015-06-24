close;
clear;
clc;
disp("the system is Hc(s)=1/(s+1)*(s+2)");
disp("therefore hc(t)=(e^-t-e^-2*t)*u(t) by frequency shifting     property")
disp("therefore hd[n]=hc(t)=(e^(-n*Ts)-e^(-2*n*Ts))*u[n]");
disp("taking z-transform Hd(z)=1/(1-e^(-n*Ts)*z^-1)  -  1/(1-e^(-2*n*Ts)*z^-1");
