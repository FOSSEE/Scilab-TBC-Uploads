//Ex 3.15 page 127

clc;
clear;
close;

n=3;// no. of phase
R=50;// ohm
Vs=400;// V
f=50;// Hz
alpha = 45;// degree

Vm=Vs*sqrt(2);// V
Vo=3*Vm/2/%pi*(1+cos(alpha*%pi/180));// V
Io=Vo/R;// A
printf('\n Average load voltage = %.2f V',Vo)
printf('\n Average load current = %.2f A',Io)
