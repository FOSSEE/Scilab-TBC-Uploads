//Example 3.45:insulation resistance
clc;
clear;
close;
x=0.4343;//
t=60;//seconds
e=350;//volts
v=150;//volts
c=8*10^-4;//micro-F
x1=((x*t)/(c*log10(e/v)))*10^-3;//M-ohm
l=1000;//m
l2=500;//m
xo=((x1*10^3*l2)/l);//M-ohm
disp(xo*10^-3,"resistance is,(M-ohm)=")
