        //    PG (278)

deff('[y]=f(x)','y=exp(-x^2)')
x0=0;
x1=1;


//    True value
I = integrate('exp(-x^2)','x',x0,x1)

//    Using Gaussian Quadrature

//    For n=2, w=1

n=2;
p  = legendrepol(n,'x')
xr = roots(p);
A  = [];

for j = 1:2
    pd = derivat(p)
    A = [A 2/((1-xr(j)^2)*(horner(pd,xr(j)))^2)]
end

tr = ((x1-x0)/2.*xr)+((x1+x0)/2);

s = ((x1-x0)/2)*f(tr)
I = s*A