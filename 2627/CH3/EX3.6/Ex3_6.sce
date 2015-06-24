//Ex 3.6
clc;clear;close;
format('v',5);
L=318;//mH
R=75;//ohm
VR=150;//V
f=50;///Hz
I=VR/R;//A
XL=2*%pi*f*L/1000;//ohm
VL=I*XL;//V
V=sqrt(VR^2+VL^2);//V
disp(V,"Supply Voltage(V)");
