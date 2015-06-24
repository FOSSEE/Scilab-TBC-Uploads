//Ex 3.3
clc;clear;close;
format('v',6);
//v=141.4*sin(377*t)
Vm=141.4;//V
V=Vm/sqrt(2);//V(rms voltage)
disp(V,"(a) r.m.s. Voltage(V)");
omega=377;//rad/s
f=omega/2/%pi;//Hz
disp(f,"(b) Frequency(Hz)");
t=3*10^-3;//seconds
v=141.4*sin(377*t);//V
disp(v,"(c) Instantaneous Voltage(V)");
