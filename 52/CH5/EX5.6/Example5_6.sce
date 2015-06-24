//Example 5.6
//To Find out the order of the Filter using Chebyshev Approximation
clear;
clc ;
close ;
ap=3;//db
as=16;//db
fp=1000;//Hz
fs=2000;//Hz
op=2*%pi*fp;
os=2*%pi*fs;
N=acosh(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/acosh(os/op);
disp(ceil(N),'Order of the filter, N =');