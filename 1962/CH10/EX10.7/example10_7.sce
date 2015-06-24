
//example 10.7
//page 382
clc; funcprot(0);
//initialisation of variable
z=0.7;
S=0.0004;
n=0.012;//manning's constant
Q=15;//flow rate
g=9.81;
b=4;
y=2.22//depth of water
A=(b+z*y)*y;
T=b+2*z*y;
D=A/T;
V=Q/A;
F=V/sqroot(g*D);
disp(F,"Froude Number");
clear
