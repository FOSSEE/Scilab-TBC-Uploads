//Example No. 12_05
//Simpson's 3/8 rule
//Pg No. 386
clear ;close ;clc ;

funcprot(0)
//case(a)
deff('F = f(x)','F = x^3 + 1');
a = 1 ;
b = 2 ;
h = (b-a)/3 
x1 = a + h 
x2 = a + 2*h
Is2 = 3*h*( f(a) + 3*f(x1) + 3*f(x2) + f(b) )/8 ;
disp(Is2,'Integral of x^3 +1 from 1 to 2 is')
//case(b)
deff('F = f(x)','F = sqrt( sin(x) )');
a = 0 ;
b = %pi/2 ;
h = (b-a)/3 
x1 = a + h 
x2 = a + 2*h
Is2 = 3*h*( f(a) + 3*f(x1) + 3*f(x2) + f(b) )/8 ;
disp(Is2,'Integral of sqrt(sin(x)) from 0 to %pi/2 is')