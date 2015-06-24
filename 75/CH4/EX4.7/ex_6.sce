        //    PG (219)

deff('[y]=f(x)','y=exp(x)')

x=-1:.01:1;                // defining the range of x

//    Let r1(x) = b0 + b1(x)
//    Minimize 
//        ||f-r1||^2 = integrate('(exp(x)-b0-b1*x)^2','x',-1,1) = F(b0,b1)
//    F = integrate('exp(2*x) + b0^2 + (b1^2)*(x^2) - 2*b0*x*exp(x) + 2*b0*b1*x','x',b0,b1)
//    To find a minimum, we set

//        df/db0 = 0
//        df/db1 = 0-----------necessary conditions at a minimal point
//    On solving, we get the values of b0 & b1

b0 = 0.5*integrate('exp(x)','x',-1,1);
b1 = 1.5*integrate('x*exp(x)','x',-1,1);
r1 = b0+b1*x;
norm(exp(x)-r1,'inf');    //    least squares approximation

r3 = 0.996294 + 0.997955*x + 0.536722*x^2 + 0.176139*x^3; 
norm(exp(x)-r3,'inf');    //    cubic least squares approximation

//    average error E

E = norm(exp(x)-r3,2)/sqrt(2)
