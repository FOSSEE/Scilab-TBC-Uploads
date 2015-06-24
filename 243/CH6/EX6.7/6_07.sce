//Example No. 6_07
//Root of the Equation using Newton Raphson Method
//Pg No. 147
clear ; close ; clc ;

//Coefficients of polynomial in increasing order of power of x
A = [ 2  -3  1];
fx = poly(A,'x','c');
dfx = derivat(fx);

x(1) = 0 ;
for i = 1:10
    f(i)  = horner(fx,x(i));
    if f(i)~= 0 then
        df(i) = horner(dfx,x(i));
        x(i+1) = x(i) - f(i)/df(i) ;
        printf('x%i = %f\n',i+1,x(i+1));    
    else
        printf('Since f(%f) = 0, the root closer to the point x = 0 is %f \n',x(i),x(i) );
        break
    end
end