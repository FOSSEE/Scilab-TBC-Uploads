//    PG (227)

deff('[y]=f(x)','y=exp(x)')
x = -1:0.01:1;
c3=0.994571+0.997308*x+0.542991*x.^2+0.177347*x.^3;
norm(exp(x)-c3,'inf')

//    as obtained in the example 6, c4 = 0.00547, T4(x) = (-1)
//    c4*T4(x) = 0.00547 * (-1)
//    norm(exp(x)-q3,'inf') = 0.00553