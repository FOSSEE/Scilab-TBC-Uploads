        //    PG (354)

//    dy/dx = -y

deff('[z]=f(x,y)','z=-y')
y0=1;

//    True solution is 
Y = exp(-x)
//    The equation for D(x) is 
//        D'(x) = -D(x) + 0.5*exp(-x)
//        D(0) = 0
//    The solution is
//        D(x) = 0.5*x*exp(-x)
