//Example No. 6_12
//Fixed point method
//Pg No. 162
clear ; close ; clc ;

A = [ -5  0  1 ];
funcprot(0);
deff('x = g(x)','x = 5/x');
x(1) = 1 ;
printf('\n x0 = %f \n',x(1));
for i = 2:5
    x(i) = feval(x(i-1),g);
    printf(' x%i = %f \n',i-1,x(i))
end
//Defining g(x) in different way
deff('x = g(x)','x = x^2 + x - 5');
x(1) = 0;
printf('\n x0 = %f \n',x(1));
for i = 2:5
    x(i) = feval(x(i-1),g);
    printf(' x%i = %f \n',i-1,x(i))
end
//Third form of g(x)
deff('x = g(x)',' x = (x + 5/x)/2 ');
x(1) = 1;
printf('\n x0 = %f \n',x(1));
for i = 2:7
    x(i) = feval(x(i-1),g);
    printf(' x%i = %f \n',i-1,x(i))
end