//Example 2.22
//To find input x(n)
//X(z)=1/(2*z^(-2)+2*z^(-1)+1);
clear;
clc ;
close ;
z=%z;
a=(2+2*z+z^2);
b=z^2;
h =ldiv(b,a,6);
disp (h,"First six values of h(n)=");