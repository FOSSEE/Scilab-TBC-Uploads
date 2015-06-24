//Example No. 12_03
//Simpon's 1/3 rule
//Pg No. 381
clear ;close ;clc ;

funcprot(0) //To avoid warning message for defining function f(x) twice
//case(a)
deff('F = f(x)','F = exp(x)');
a = -1;
b = 1;
h = (b-a)/2 
x1 = a+h
Is1 = h*( f(a) + f(b) + 4*f(x1) )/3 
disp(Is1,'Integral for case(a) , Is1 = ',h,'h = ')

//case(b)
deff('F = f(x)','F = sqrt(sin(x))');
a = 0
b = %pi/2
h = (b-a)/2 
x1 = a+h
Is1 = h*( f(a) + f(b) + 4*f(x1) )/3
disp(Is1,'Integral for case(b),Is1 = ',h,'h = ')