//Example No. 6_04
//Root of a Equation Using Bisection Method
//Pg No. 132

clear ; close ; clc ;

//Coefficients in increasing order of power of x starting from 0
A = [-10 -4 1];
disp('First finding the interval that contains a root,this can be done by using Eq 6.10')
xmax = sqrt((A(2)/A(3))^2 - 2*(A(1)/A(3)))
printf('\n Both the roots lie in the interval (-%i,%i) \n',xmax,xmax)
x = -6:6
p = poly(A,'x','c')
fx = horner(p,x);
for i = 1:12
    if fx(1,i)*fx(1,i+1) < 0 then
        break ;
    end    
end
printf('\n The root lies in the interval (%i,%i)\n',x(1,i),x(1,i+1))
x1 = x(1,i);
x2 = x(1,i+1);
f1 = fx(1,i);
f2 = fx(1,i+1);
err = abs((x2-x1)/x2) ;
while err > 0.0001
x0 = (x1 + x2)/2 ;
f0 = horner(p,x0);
if f0*f1 < 0  then
    x2 = x0
    f2 = f0
elseif f0*f2 < 0
    x1 = x0
    f1 = f0
else
    break
end
printf('\n the root lies in the interval (%f,%f)\n',x1,x2);
err = abs((x2-x1)/x2);
end
printf('\nthe approximate root is %f\n',x0)