//Caption:Calculate the breakdown power of air filled rectangular waveguide for dominant mode at 9.375 GHz.
//Exa:4.23
clc;
clear;
close;
//Given: 
c=3*10^10;//in cm/s
a=2.3;//in cm
b=1;//in cm
f=9.375*10^9;//in Hz
wl_o=c/f;
P_bd_TE11=597*2.3*1*{1-{wl_o/(2*a)}^2}^0.5;
disp(P_bd_TE11,'Breakdown power for dominant mode (in kW) =');
