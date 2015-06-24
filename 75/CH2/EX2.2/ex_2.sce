    //    EXAMPLE (PG 60)
    //    To find largest root, alpha, of f(x) = x^6 - x - 1 = 0 
    //    using newton's method


deff('[y]=f(x)','y=x^6-x-1')
deff('[y]=fp(x)','y=6*x^5-1')                    //    Derivative of f(x)
x=(1+2)/2                    //    Initial appoximation

//we call a user-defined function 'newton' so as to find the approximate 
// root of the equation with a defined permissible error.  


newton(x,f,fp)