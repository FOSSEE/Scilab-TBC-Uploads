//Caption:Calculate the maximum power 
//Exa:4.21
clc;
clear;
close;
c=3*10^10;//in cm/s
f=9*10^9;//inHz
E_max=300;//in V/cm
d=5;
wl_o=c/f;
//For TE11
wl_c=d*%pi/1.841;
wl_g=wl_o/sqrt(1-(wl_o/wl_c)^2);
P_max=0.498*E_max^2*d^2*(wl_o/wl_g);
disp(P_max,'Maximum power (in watts) =');
