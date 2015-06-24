
//example 5.6
//page 202
clc; funcprot(0);
//initialisation of variable
D=3;
pi=3.14;
Q=2;
rho=1.94;
A=pi*D^2/4/144;
V=Q/A;
Rx=rho*Q*2*V*3^0.5/2;
Ry=rho*Q*2*(V-V);
R=sqroot(Rx^2+Ry^2);
disp(R,"resultant reaction (lbs)=");
clear
