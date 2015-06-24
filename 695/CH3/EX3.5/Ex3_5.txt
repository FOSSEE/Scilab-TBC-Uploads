//Caption:Determine the (a)No load power factor(b)iron loss component of current (c)magnetising component of current
//Exa:3.5
clc;
clear;
close;
f=50;//in Hz
W=80;//in watts
V=4400;//in volts
I=0.04;//in amperes
pf=W/(V*I);
disp(pf,'(a)No load power factor=');
I_w=I*pf;
disp(I_w,'(b)Iron loss component of current (in amperes)=');
I_m=I*sqrt(1-pf^2);
disp(I_m,'(c)Magnetising component of current (in amperes)')