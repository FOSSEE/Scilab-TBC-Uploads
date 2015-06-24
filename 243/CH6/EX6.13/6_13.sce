//Example No. 6_13
//Solving System of non-linear equations using FIXED POINT METHOD
//Pg No. 169
clear ; close ; clc ;

printf(' x^2 - y^2 = 3 \n x^2 + x*y \n');
deff('x = f(x,y)','x = y + 3/(x+y)') ;
deff('y = g(x)','y = (6-x^2)/x') ;
x(1) = 1 ;
y(1) = 1 ;
printf('\n x0 = %f \n y0 = %f \n',x(1),y(1));
for i = 2:4
    x(i) = feval(x(i-1),y(i-1),f);
    y(i) = feval(x(i-1),g);
    printf('\n x%i = %f \n y%i = %f \n',i-1,x(i),i-1,y(i));
end