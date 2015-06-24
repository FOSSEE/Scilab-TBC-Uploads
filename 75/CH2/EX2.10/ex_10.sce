    //    EXAMPLE (PG 85)

    //    x(n+1) = 6.28 + sin(x(n))
    //    True root is alpha = 6.01550307297

    deff ('[y]=f(x)','f(x)=6.28+sin(x(n))')
    //    k=6.01550307297

//x=6.01550307297

deff('[y]=g(x)','y=cos(x)')


// we call a user-defined function 'aitken' so as to find the approximate 
// root of the equation with a defined permissible error.  


aitken(0.2,0.5,1,g)