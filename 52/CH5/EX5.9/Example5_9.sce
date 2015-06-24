//Example 5.9
//To Design a Chebyshev Filter with Given Specifications
clear;
clc ;
close ;
ap=2.5;//db
as=30;//db
op=20;//rad/sec
os=50;//rad/sec
N=acosh(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/acosh(os/op);
disp(ceil(N),'Order of the filter, N =');