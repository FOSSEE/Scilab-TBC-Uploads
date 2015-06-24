        //    PG (255)

deff('[y]=f(x)','y=exp(x)*cos(x)')
deff('[y]=fp(x)','y=exp(x)*(cos(x)-sin(x))')
deff('[y]=fpp(x)','y=-2*exp(x)*sin(x)')
x0=0;
x1=%pi;


//    True value
integrate('exp(x)*cos(x)','x',x0,x1)

//    Using Corrected Trapezoidal rule

n=2;
h=(x1-x0)/n;
I1 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E1 = -h^2 * (fp(x1)-fp(x0)) /12
C1 = I1 + E1

n=4;
h=(x1-x0)/n;
I2 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E2 = -h^2 * (fp(x1)-fp(x0)) /12
C2 = I2 + E2

n=8;
h=(x1-x0)/n;
I3 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E3 = -h^2 * (fp(x1)-fp(x0)) /12
C3 = I3 + E3

n=16;
h=(x1-x0)/n;
I4 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E4 = -h^2 * (fp(x1)-fp(x0)) /12
C4 = I4 + E4

n=32;
h=(x1-x0)/n;
I5 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E5 = -h^2 * (fp(x1)-fp(x0)) /12
C5 = I5 + E5

n=64;
h=(x1-x0)/n;
I6 = ((x1-x0)/2) * (f(x0)+f(x1)) /2
E6 = -h^2 * (fp(x1)-fp(x0)) /12
C6 = I6 + E6

