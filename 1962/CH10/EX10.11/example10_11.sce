
//example 10.11
//page 395
clc; funcprot(0);
//initialisation of variable
yn=8.69;//depth
b=50;//width
Gamma=62.4;//unit weight
rho=1.94;//density
Q=4000;//flow rate
V=Q/b/yn;
Fs=0.5*Gamma*b*yn^2+rho*Q*V;
disp(Fs,"force by water(lbs)=");
clear
