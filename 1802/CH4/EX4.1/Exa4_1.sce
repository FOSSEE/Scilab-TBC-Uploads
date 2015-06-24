//Exa 4.1
clc;
clear;
close;
//Given Data :
format('v',9);
r=1.213/2;//in cm
f=60;//in Hz
ds=0.77888*r;//in cm
spacing=1.25;//in meter
L=4*10^-7*log(spacing*100/ds);//in H/m
disp(L*1000,"Inductance(in H/km) :");
XL=2*%pi*f*L;//in ohm/m
disp(XL*1000*60,"Inductive reactance for 60 km line(in ohm) :");