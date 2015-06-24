        //    PG (254)

deff('[y]=f(x)','y=exp(x)*cos(x)')
deff('[y]=fp(x)','y=exp(x)*(cos(x)-sin(x))')
deff('[y]=fpp(x)','y=-2*exp(x)*sin(x)')
x0=0;
x1=%pi;


//    True value
integrate('exp(x)*cos(x)','x',x0,x1)

//    Using Trapezoidal rule

n=2;
h=(x1-x0)/n;
I1 = (x1-x0) * (f(x0)+f(x1)) /4
E1 = -h^2 * (fp(x1)-fp(x0)) /12

n=4;
h=(x1-x0)/n;
I2 = (x1-x0) * (f(x0)+f(x1)) /4
E2 = -h^2 * (fp(x1)-fp(x0)) /12

n=8;
h=(x1-x0)/n;
I3 = (x1-x0) * (f(x0)+f(x1)) /4
E3 = -h^2 * (fp(x1)-fp(x0)) /12

n=16;
h=(x1-x0)/n;
I4 = (x1-x0) * (f(x0)+f(x1)) /4
E4 = -h^2 * (fp(x1)-fp(x0)) /12

n=32;
h=(x1-x0)/n;
I5 = (x1-x0) * (f(x0)+f(x1)) /4
E5 = -h^2 * (fp(x1)-fp(x0)) /12

n=64;
h=(x1-x0)/n;
I6 = (x1-x0) * (f(x0)+f(x1)) /4
E6 = -h^2 * (fp(x1)-fp(x0)) /12

n=128;
h=(x1-x0)/n;
I7 = (x1-x0) * (f(x0)+f(x1)) /4
E7 = -h^2 * (fp(x1)-fp(x0)) /12

