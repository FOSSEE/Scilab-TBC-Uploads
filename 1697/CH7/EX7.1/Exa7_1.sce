//Exa 7.1
clc;
clear;
close;
//given data :
f=6;//in GHz
f=f*10^9;//in Hz
d=10;//in feet
d=3.048;//in meter
c=3*10^8;//in m/s
lambda=c/f;//in meters
rmin=2*d^2/lambda;//in meters
disp(rmin,"Minimumseparation distance in meters : ");