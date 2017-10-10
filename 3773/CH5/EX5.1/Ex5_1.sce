//Chapter 5: Point Source and Their Arrays
//Example 5-6.1
clc;
clear;

//Variable Initialization
Um=1 //Maximum radiation intensity (unitless)

//Calculation
deff('z=f(x,y)','z=cos(x)*sin(x)')//Integrand(Unitless)
X=[0 0;%pi/2 %pi/2;%pi/2 0];
Y=[0 0;2*%pi 2*%pi;0 2*%pi];
[I,err]=int2d(X,Y,f)//Total power radiated (relative to Um)

D=(4*%pi)/I //Directivity (unitless)

mprintf('The directivity is %f',D)
