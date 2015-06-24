//Exa 6.8
clc;
clear;
close;
//Given Data:
f=5000;//in MHz
f=f*10^6;//in Hz
d=10;//in feet
d=d*0.3048;//in meter
c=3*10^8;//Speed of light in m/s
lambda=c/f;//in meter
r=2*d^2/lambda;//in meter
disp(r,"Minimum distance between primary and secondary antenna in meter :");