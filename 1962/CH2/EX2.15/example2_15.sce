
//example 2.15
//page 86
clc; funcprot(0);
//initialisation of variable
Gamma=9810;
x1=20/100/3;
x2=20/2/100;
theta=atan(4/20);
V=4*20*100/100^3/2;//volume
Fb=Gamma*V;//Force Buoyant
W=Fb-1.5;//total weight
x=(x2-x1)*cos(theta);
M=W*x;
disp(M*100,"Riding Moment (Ncm)=");
clear
