//Example No. 11_04
//Approximate second derivative
//Pg No. 354
clear ;close ;clc ;

x = 0.75;
h = 0.01;
deff('F = f(x)','F = cos(x)');
deff('D2F = d2f(x,h)','D2F = ( f(x+h) - 2*f(x) + f(x-h) )/h^2 ');
y = d2f(0.75,0.01);
d2fexact = -cos(0.75)
err = d2fexact - y ;
disp(err,'err = ',d2fexact,'d2fexact = ',y,'y = ')