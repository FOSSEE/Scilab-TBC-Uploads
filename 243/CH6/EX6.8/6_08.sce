//Example No. 6_08
//Root of the Equation using Newton Raphson Method
//Pg No. 151
clear ; close ; clc ;
//Coefficients of polynomial in increasing order of power of x
A = [ 6  1  -4  1 ];
fx = poly(A,'x','c');
dfx = derivat(fx);

x(1) = 5.0 ;
for i = 1:6
    f(i)  = horner(fx,x(i));
    if f(i)~= 0 then
        df(i) = horner(dfx,x(i));
        x(i+1) = x(i) - f(i)/df(i) ;
        printf('x%i = %f\n',i+1,x(i+1));
    end
end
disp('From the results we can see that number of correct digits approximately doubles with each iteration')