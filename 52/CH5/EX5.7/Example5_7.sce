//Example 5.7
//To Design an analog Chebyshev Filter with Given Specifications
clear;
clc ;
close ;
os=2;
op=1;
ap=3;//db
as=16;//db
e1=1/sqrt(2);
l1=0.1;
epsilon=sqrt(1/(e1^2)-1);
lambda=sqrt(1/(l1^2)-1);
N=acosh(lambda/epsilon)/acosh(os/op);
disp(ceil(N),'Order of the filter, N =');