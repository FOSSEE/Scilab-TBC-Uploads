//Exa 7.4
clc;
clear;
close;
//given data :
f=3000;//in MHz
f=f*10^6;//in Hz
d=20;//in feet
d=20*0.3048;//in meter
c=3*10^8;//in m/s
lambda=c/f;//in meters
r=2*d^2/lambda;//in meters
disp(r,"Minimum distance between primary and secondary in meters : ");