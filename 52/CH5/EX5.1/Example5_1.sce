//Example 5.1
//To Find out the order of the filter
clear;
clc ;
close ;
ap=1;//db
as=30;//db
op=200;//rad/sec
os=600;//rad/sec
N=log(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/log(os/op);
disp(ceil(N),'Order of the filter, N =');