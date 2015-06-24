//example 2.7
//page 67
clc; funcprot(0);
//initialisation of variable
A=2;
pi=3.14;
Gamma=9810;
theta=pi/3;
ybar=0.75+sin(pi/3);
Ig=2^3/12;//moment of inertia
//part1
F=Gamma*A*ybar;//force
disp(F,"Total Force (N)=");
//part2
hbar=ybar+Ig*(sin(theta))^2/A/ybar;//centroid
disp(hbar,"depth of center of pressure(m)=");
clear
