        //    PG (6)

//    Taylor series for e^(-x^2) upto first four terms

deff('[y]=f(x)','y=exp(-x^2)')
funcprot(0)
deff('[y]=fp(x)','y=-2*x*exp(-x^2)')
funcprot(0)
deff('[y]=fpp(x)','y=(1-2*x^2)*(-2*exp(-2*x^2))')
funcprot(0)
deff('[y]=g(x)','y=4*x*exp(-x^2)*(3-2*x^2)')
funcprot(0)
deff('[y]=gp(x)','y=(32*x^4*exp(-x^2))+(-72*x^2*exp(-x^2))+12*exp(-x^2)')
funcprot(0)
x0=0;
x=poly(0,"x");
T = f(x0) + (x-x0)*fp(x0)/factorial(1) + (x-x0)^2 * fpp(x0)/factorial(2) + (x-x0)^3 * g(x0)/factorial(3) + (x-x0)^4 * gp(x0)/factorial(4)



//     Similarily Taylor series for inv(tan(x))