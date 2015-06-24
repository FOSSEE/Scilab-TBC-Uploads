//Example 2.32: error
clc;
clear;
close;
//given data :
V=20*10^3;// in V
v1=2*10^3;// in V
R=10*10^3;// in ohm
r=R*v1/V;
f=50;// in Hz
w=2*%pi*f;
C=0.60*10^-6;// in F
v=V/((R/r)*sqrt(1+((w^2*C^2*r^2*(R-r)^2)/R^2)));
Error=((v1-v)/v1)*100;
disp(Error,"Error,(%) = ")
