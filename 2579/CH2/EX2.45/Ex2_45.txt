//Ex:2.45
clc;
clear;
close;
X3dB=0.1;// beam width in degree
X3dB1=X3dB*%pi/180;// beam width in radian
XB=(%pi/4)*(X3dB1^2);// beam solid angle
r=36000*1000;// distance from earth surface in m
A=XB*r^2;// area of spot in m^2
printf("The area of spot = %f*10^9 m^2", A/10^9);