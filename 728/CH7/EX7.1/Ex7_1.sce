//Caption:Calculate the SWR of the transmission line
//Exa:7.1
clc;
clear;
close;
//Given:
c=3*10^10;//in cm/s
a=4;//in cm
b=2.5;//in cm
f=10*10^9;//in Hz
d=0.1;//distance between 2 minimum power points(in cm)
//For TE10 mode:
wl_c=2*a;
wl_o=c/f;
wl_g=wl_o/sqrt(1-(wl_o/wl_c)^2);
S=wl_g/(%pi*d);
disp(S,'Voltage standing wave ratio =');