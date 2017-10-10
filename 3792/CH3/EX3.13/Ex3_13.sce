// SAMPLE PROBLEM 3/13
clc;clear;funcprot(0);
// Given data
m=50;// The mass of the block in kg
F=300;// N
x_1=0.233;// m
k=80;// The spring stifness in N/m
x=1.2;// m
y=0.9;// m

// Calculation
x_2=x_1+x;// m
U_12=(1/2)*k*(x_1^2-x_2^2);// The work done by the spring force acting on the block in J
s=sqrt(x^2+y^2)-y;// m
W=F*s;// The work done in J
T_1=0;// J
v=sqrt(((U_12+W)*2)/m);// m/s
printf("\nThe velocity of the block as it reaches position B,v=%1.2f m/s",v);
