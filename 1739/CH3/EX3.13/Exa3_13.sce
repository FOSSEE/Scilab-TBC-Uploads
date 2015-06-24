//Exa 3.13
clc;
clear;
close;
//Given data :
lambda=1.3;//in um
lambda=1.3*10^-6;//in m
n1=1.5;//unitless
delta=3//in %
c=3*10^8;//speed of light in m/s
n2=n1*(1-delta/100);//unitless
Rcm=3*n1^2*lambda/(4*%pi*(n1^2-n2^2)^(3/2));//in meter
Rcm=Rcm*10^6;//in um
disp(Rcm," Critical radius of curvature in micro meter : ");