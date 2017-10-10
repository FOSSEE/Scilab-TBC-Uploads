//To find the deflection produced by 200V

clc;
clear;

R=10*(10^3);
V=200;
B=80*(10^-3);
N=100;
A=9*(10^-4); // The area of the coil is the product of the length and width (l.2r)
I=V/R;

Td=N*B*I*A;

K=30*(10^-7);

theta=Td/K;

printf('The deflection produced by 200V = %g degrees \n',theta)
