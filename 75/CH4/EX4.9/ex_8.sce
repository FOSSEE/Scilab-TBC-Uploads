        //    PG (223)

deff('[y]=f(x)','y=exp(x)')

x=[-1.0 -0.6919 0.0310 0.7229 1.0];                // defining x

r3 = 0.996294 + 0.997955*x + 0.536722*x^2 + 0.176139*x^3;
norm(exp(x)-r3,'inf');    //    cubic least squares approximation
deff('[y]=g(x)','y=0.994571+0.997308*x+0.542991*x^2+0.177347*x^3')
//    c3=g(x);
x1=x(1,1);
(exp(x1)-g(x1))
x2=x(1,2);
(exp(x2)-g(x2))
x3=x(1,3);
(exp(x3)-g(x3))
x4=x(1,4);
(exp(x4)-g(x4))
x5=x(1,5);
(exp(x5)-g(x5))
