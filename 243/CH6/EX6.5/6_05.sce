//Example No. 6_05
//False Position Method
//Pg No. 139
clear ; close ; clc ;

//Coefficients of polynomial in increasing order of power of x
A = [-2  -1  1];
x1 = 1 ;
x2 = 3 ;
fx = poly(A,'x','c');
for i = 1:15
    printf('Iteration No. %i \n',i);
    fx1 = horner(fx,x1);
    fx2 = horner(fx,x2);
    x0 = x1 - fx1*(x2-x1)/(fx2-fx1) 
    printf('x0 = %f \n',x0);
    fx0 = horner(fx,x0);
    if fx1*fx0 < 0 then
        x2 = x0 ;
    else
        x1 = x0 ;
    end    
end
