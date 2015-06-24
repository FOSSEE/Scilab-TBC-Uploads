//Example 1.19b
//Check whether the given signal is periodic or not
clc;
n=-20:20;
x=exp(%i*(%pi/5)*n);
plot2d3(n,x);
disp('Plot shows that the given signal is periodic');