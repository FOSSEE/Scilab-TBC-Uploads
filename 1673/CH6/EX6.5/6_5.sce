//cubic spline method
//example 6.5
//page 214
clc;clear;close;
x=[0 %pi/2 %pi];
y=[0 1 0];
M0=0,M2=0;
h=%pi/2;
M1=(6*(y(1)-2*y(2)+y(3))/(h^2)-M0-M2)/4;
deff('y=s1(x)','y=2*((-2*3*x^2)/(%pi^2)+3/2)/%pi');
S1=s1(%pi/4);
disp(S1,'S1(pi/4)=');
deff('y=s2(x)','y=(-24*x)/(%pi^3)');
S2=s2(%pi/4);
disp(S2,'S2(pi/4)=');