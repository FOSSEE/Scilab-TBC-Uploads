//EXAMPLE 6.12
//Inverse Z-transform
clear;
clc;
z=%z;
num = 0.5*z;
den = z^2 -z + 0.25;
func = num/den;
v = factors(den);
disp(v,'factors are = ');
h1=ldiv(num,den,10);
disp(h1,'h  = ');
//using the property of z-trasnform
disp('observing v(1) & v(2) we conclude        h=n*(0.5)^n ')
