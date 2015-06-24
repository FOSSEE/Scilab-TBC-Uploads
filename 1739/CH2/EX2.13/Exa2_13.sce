//Exa 2.13
clc;
clear;
close;
//Given data :
format('v',5)
n1=1.52;//unitless
fi_o=8;//in Degree
//Formula : sin(fi_o)=n1*sqrt(2*delta)
delta=(sind(fi_o)/n1)^2/2;//Relative refractive index
disp("The value of relative refractive index difference is "+string(delta*100)+"%");