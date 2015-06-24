//Exa 6.1
clc;
clear;
close;
// given data
epsilon_r=2.5;
epsilon_o=8.854*10^-12;
d=.2*10^-3;// in m
A=20*10^-4;// in m^2
omega=2*%pi*10^6;// in radians/s
f=10^6;
tan_delta=4*10^-4;
C=epsilon_o*epsilon_r*A/d;// in F
disp("Capicitance is : "+string(C*10^12)+" miu miu F");
// Formula P=V^2/R, so
// R=V^2/P and P= V^2*2*%pi* f * C * tan delta, putting the value of P, we get
R=1/(2*%pi*f*C*tan_delta);// in ohm
disp("The element of parallel R-C circuit is : "+string(R*10^-6)+" M ohm");

