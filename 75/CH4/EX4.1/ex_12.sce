        //    PG (199)

x = poly(0,"x");
p3 = 1 + x + (1/2)*x^(2) + (1/6)*x^3
deff('[y]=f(x)','y=exp(x)')
funcprot(0)
x = -1:0.01:1;
f(x) - p3
