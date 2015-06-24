//EXAMPLE 6.11
//Inverse Z-transform
clc;
clear;
syms n z1;
z  = %z;
num = z;      //given |z|>1;
den = (z-1)^2;


//Power series expansion
x=ldiv(num,den,20);
disp(x,'x = ');
disp('x = n*u[n]');