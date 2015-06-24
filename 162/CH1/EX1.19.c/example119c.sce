//Example 1.19c
//Check whether the given signal is periodic or not
clc;
n=-75:75;
x=cos((%pi/5)*n)+sin((%pi/6)*n);
plot2d3(n,x);
disp('Plot shows that the given signal is periodic');