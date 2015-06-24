//Example 5.8
//To Find out the order of the poles of the Type 1 Lowpass Chebyshev Filter
clear;
clc ;
close ;
ap=1;//dB
as=40;//dB
op=1000*%pi;
os=2000*%pi;
N=acosh(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/acosh(os/op);
disp(ceil(N),'Order of the filter, N =');