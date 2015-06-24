    //    EXAMPLE ( PG 66)
    //    To find largest root, alpha, of f(x) = x^6 - x - 1 = 0 
    //    using secant method

deff('[y]=f(x)','y=x^6-x-1')
a=1
b=2        //    Initial approximations


// we call a user-defined function 'secant' so as to find the approximate 
// root of the equation with a defined permissible error.  

secant(a,b,f)
