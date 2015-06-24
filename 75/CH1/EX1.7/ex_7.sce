        //    PG (20)

//    Taylor series for the first two terms

deff('[y]=f(x)','y=sqrt(1+x)')
funcprot(0)
deff('[y]=fp(x)','y=0.5*(1+x)^(-1/2)')
funcprot(0)
x0=0;
x=poly(0,"x");
T = f(x0) + (x-x0)*fp(x0)/factorial(1)