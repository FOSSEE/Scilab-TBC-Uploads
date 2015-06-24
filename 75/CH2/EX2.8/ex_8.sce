    //    EXAMPLE (PG 81)

    //Assume alpha is a solution of x = g(x)

alpha=sqrt(3);

//    case 1


deff('[y]=g(x)','y=x^2+x-3')
deff('[z]=gp(x)','z=2*x+1')        //    Derivative of g(x)
gp(alpha)

//    case 2

deff('[y]=g(x)','y=3/x')
funcprot(0)
deff('[z]=gp(x)','z=3/x')        //    Derivative of g(x)
gp(alpha)

//    case 3

deff('[y]=g(x)','y=0.5*(x+(3/x))')
funcprot(0)
deff('[z]=gp(x)','z=0.5*(1-(3/(x^2)))')        //    Derivative of g(x)
gp(alpha)
