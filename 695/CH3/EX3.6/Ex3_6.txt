//Caption:Determine the (a)No load input power (b)magnetising component of current and no load power factor
//Exa:3.6
clc;
clear;
close;
f=50;//in Hz
P=20*1000;//in watts
E_1=2200;//in volts
E_2=220;//in volts
I=1.3;//in amperes
I_w=0.5;//in amperes
W=E_2*I_w;
disp(W,'(a)No load input power (in watts)=')
pf=I_w/I;
disp(pf,'(b)No load power factor=');
I_m=I*sqrt(1-pf^2);
disp(I_m,'   Magnetising component of current (in amperes)')