//EXAMPLE 6.18
//Inverse Z-transform using power series expansion
clc;
clear;
z=%z;
Xnum=z;
Xden=(z-1)^2;
xn=ldiv(Xnum,Xden,15);
disp(xn,'The function is = ');
disp(' Thus, xn = n*u(n)');