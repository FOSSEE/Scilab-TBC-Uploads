// Example 6.9;//CW operating lifetime
clc;
clear;
close;
d=0.67;//
bo=1.86*10^7;//in h^-1
ea=1.67*10^-19;//
k=1.38*10^-23;//
t=290;//Kelvin
x=((-ea)/(k*t));//
be=((bo)*exp(-40));//in h^-1
t=((-log(d))/be);//in hours
disp(t,"CW operating lifetime in hours is")
