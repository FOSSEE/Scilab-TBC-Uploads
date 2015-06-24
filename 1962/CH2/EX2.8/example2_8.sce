//example 2.8
//page 68
clc; funcprot(0);
//initialisation of variable
pi=3.14;
theta=pi/6;
Gamma=9810;
d=6;//diameter
A=pi*d^2/4;//area
Ig=pi*d^4/64;
Pdash=600;//pressure
Fdash=Pdash*A;
ybar=10+2+3*sin(theta);
F=Gamma*A*ybar;//force
hbar=ybar+Ig*(sin(theta))^2/A/ybar;//centroid
Hbar=(F*hbar+Fdash*ybar)/(F+Fdash);
disp(Hbar,"depth of hydrostatic pressure(ft)=");
clear
