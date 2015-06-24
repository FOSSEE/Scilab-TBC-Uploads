
//example 7.5
//page 270
clc; funcprot(0);
//initialisation of variable
S=1.26;
mu=0.862;
rho=1260;
pi=3.14;
Cd=35;
U=0.05;
D=0.01;
Re=rho*U*D/mu;
Fd=1/2*Cd*rho*U^2*pi*D^2/4;
disp(Fd,"drag force (N)");
clear
