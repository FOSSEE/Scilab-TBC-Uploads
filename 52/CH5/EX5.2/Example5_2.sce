//Example 5.2
//To Find out the order of a Low Pass Butterworth Filter
clear;
clc ;
close ;
ap=3;//db
as=40;//db
fp=500;//Hz
fs=1000;//Hz
op=2*%pi*fp;
os=2*%pi*fs;
N=log(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/log(os/op);
disp(ceil(N),'Order of the filter, N =');