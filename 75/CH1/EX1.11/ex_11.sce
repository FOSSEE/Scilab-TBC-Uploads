        //    PG (26)

x = poly(0,"x");
x = 0;
deff('[y]=f(t)','y=exp(x*t)')
integrate('exp(x*t)','t',0,1)

//    So, for x = 0, f(0) = 1
//    f(x) is continuous at x = 0.

//    To see that there is a loss of significance problem when x is small, 
//    we evaluate f(x) at 1.4*10^(-9)

x = 1.4*10^(-9)
integrate('exp(x*t)','t',0,1)
//    When we use a ten-digit hand calculator, the result is 1.000000001

//    To avoid the loss of significance error, we may use a quadratic Taylor approximation to exp(x) and then simplify f(x).