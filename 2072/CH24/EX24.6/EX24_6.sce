//Chapter 24
clc
//Example 6
//given
lambda=580*10^-9 //wavelength of incident light in meter
a=0.30*10^-3 //slit width in meter
L=2 //distance of screen from slit in meters
//The first dark fringe corresponds to m=+1 or -1
m=1
sin_theta=m*lambda/a
//From fig 24.16 tan_theta=y/L and since theta is very small we have sin_theta=tan_theta hence sin_theta=y/L
y=L*sin_theta 
disp(y," Position of first dark fringe in meters is")


