//Chapter 2: Antenna Basics
//Example 2-4.2
clc;
clear;

//Calculation
deff('z=f(x,y)','z=(cos(x)**4)*sin(x)*1')//Integration Function
X=[0 0;%pi/2 %pi/2;%pi/2 0];
Y=[0 0;2*%pi 2*%pi;0 2*%pi];
[I,err]=int2d(X,Y,f)//Beam area (steradians)

//Result
mprintf('The Beam Area of the given pattern is %.2f sr',I)
