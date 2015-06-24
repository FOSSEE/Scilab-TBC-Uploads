//example 2.6
//page 66
clc; funcprot(0);
//initialisation of variable
Gamma=9810;
ybar=5+0.5;
pi=3.14;
theta=90/180*pi;
Ig=pi*1^4/64;//moment of Inertia
A=pi*1^2/4;
F=Gamma*A*ybar;//force
hbar=ybar+Ig*(sin(theta))^2/A/ybar;//centroid
F1=F*(hbar-5);
disp(F1,"Force required to open the gate (N)");
clear
