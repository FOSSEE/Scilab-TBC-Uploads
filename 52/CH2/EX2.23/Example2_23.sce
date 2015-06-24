//Example 2.23
//To find input x(n)
//X(z)=1/(1-2z^(-1))(1-z^(-1))^2;
clear;
clc ;
close ;
z=%z;
a=(z-2)*(z-1)^2;
b=z^3;
h =ldiv(b,a,6);
disp (h,"First six values of h(n)=");