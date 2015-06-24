//Example No. 12_04
//Simpon's 1/3 rule
//Pg No.382
clear ;close ;clc ;

deff('F = f(x)','F = sqrt( sin(x) )');
x0 = 0 ;
xa = %pi/2 ;

//case(a) n = 4
n = 4 ;
h = ( xa-x0 )/n
I = 0 
for i = 1:n/2
    I = I + f(x0 + (2*i-2)*h) + 4*f(x0 + (2*i-1)*h) + f(x0 + 2*i*h) ;
end
I = h*I/3
disp(I,'Integral value for n = 4 is',h,'h = ')

//case(b) n = 6
n = 6
h = ( xa-x0 )/n
I = 0 
for i = 1:n/2
    I = I + f(x0 + (2*i-2)*h) + 4*f(x0 + (2*i-1)*h) + f(x0 + 2*i*h) ;
end
I = h*I/3
disp(I,'Integral value for n = 6 is',h,'h = ')