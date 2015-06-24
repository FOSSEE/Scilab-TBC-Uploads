//Caption:Calculate the breakdown power of circular waveguide
//Exa:4.24
clc;
clear;
close;
//Given: 
d=5;//in cm
c=3*10^10;//in cm/s
f=9*10^9;//inHz
//Dominant mode is TE11:
wl_o=c/f;
wl_c=%pi*d/1.841;
f_c=c/wl_c;
P_bd_TE11=1790*(d/2)^2*[1-{f_c/f}^2]^0.5;
disp(P_bd_TE11/1000,'Breakdown power (in kW) =');