//Example 4.2
//Convolution sum of x[n] and h[n]
clc
clear
n=-1:1;
n1=-2:2;
x=[0.5 0.5 0.5];
h=[3 2 1];
y=coeff(poly(h,'z','c')*poly(x,'z','c'))
disp("Convolution of x[n] and h[n] is...")
disp(y)

