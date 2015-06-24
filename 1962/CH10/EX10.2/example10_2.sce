
//example 10.2
//page 366
clc; funcprot(0);
//initialisation of variable
z=1;
b=3;
y=1.5;
S=0.0009;
n=0.012;
A=(b+z*y)*y;
P=b+2*y*sqroot(1+z^2);
R=A/P;
Q=A/n*R^(2/3)*S^0.5;
disp(Q,"flow rate (m^3/s)");
clear
