//Exa 6.11
clc;
clear;
close;
//given :
a=0.5 // radius of loop antenna in m
f=0.9 // frequency in MHz
f=0.9*10^6 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
k=(2*%pi*a)/lambda // constant
disp("the value of k is:")
disp(k)
disp("since,k<1/3")
disp("So Directivity of loop antenna is D=1.5")
