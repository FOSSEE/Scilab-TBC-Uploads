//Example 6 //  Period 
clc;
clear;
close;
//given data :
g=9.8;// constant
l=1;// in m
theta_m1=60;// in degree
theta_m=%pi/3;// in radians
T0=round(2*%pi*sqrt(l/g));
disp(T0,"(a). Time period for small displacement,T0(seconds) = ")
T=T0*(1+(theta_m^2/16));
disp(T,"(b).Time period,T(seconds) = ")
