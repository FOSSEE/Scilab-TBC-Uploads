//Exa 3.1
clc;
clear;
close;
//Given data :
format('v',7);
Za=3+3*%i;//in ohm
Zm=6+3*%i;//in ohm
//Phase difference 90 degree : so angle between Im and  V is 90-45 degree
theta=90-45;//in degree
f=50;//in Hz
//Formula : tand(theta)=(Xc-Xl)/R
Xl=3;//in ohm and Xc=1/(2*%pi*C)
R=6;//in ohm
C=1/(2*%pi*f*(tand(theta)*R+Xl));
disp(C*10^6,"Capacitance(in micro Farad) :");