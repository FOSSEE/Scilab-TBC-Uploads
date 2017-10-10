//Ex 3.2 page 118

clc;
clear;
close;

R=10;// ohm
E=165;// V
//vt=330*sin(314*t)
Vm=330;// V
f=314/2/%pi;// Hz
alpha1=asin(E/Vm);// radian
alpha2=%pi-alpha1;// radian
Io=1/2/%pi/R*(2*Vm*cos(alpha1)-E*(alpha2-alpha1));// A
P=E*Io;// W

printf('Power supplied to battery = %d W',P)
