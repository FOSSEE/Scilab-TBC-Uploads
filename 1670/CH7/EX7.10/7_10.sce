//Example 7.10
//Lagrange's Differentiation
//Page no. 246
clc;close;clear;

z=[0,0.989992;0.1,0.999135;0.2,0.998295;0.3,0.987480];
h=0.1;
deff('y=f(x)','y=(-3*z(x,2)+4*z(x+1,2)-z(x+2,2))/(2*h)')
printf('\n f`(0) = %g\n\n f`(0.1) = %g',f(1),f(2))