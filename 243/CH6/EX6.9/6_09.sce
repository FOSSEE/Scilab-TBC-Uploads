//Example No. 6_09
//Root of the equation using SECANT Method
//Pg No. 153
clear ; close ; clc ;

//Coefficients of polynomial in increasing order of power of x
A = [ -10  -4  1];
x1 = 4 ;
x2 = 2 ;
fx = poly(A,'x','c')
for i = 1:6
    printf('\n For Iteration No. %i\n',i)
    fx1 = horner(fx,x1);
    fx2 = horner(fx,x2);
    x3 = x2 - fx2*(x2-x1)/(fx2-fx1) ;
    printf('\n x1 = %f\n x2 = %f \n fx1 = %f \n fx2 = %f \n x3 = %f \n',x1,x2,fx1,fx2,x3) ;
    x1 = x2;
    x2 = x3;
end
disp('This can be still continued further for accuracy')