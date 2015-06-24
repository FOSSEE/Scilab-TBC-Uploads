        //    PG (261)

//    Example 1

deff('[y]=f(x)','y=x^(7/2)')
deff('[y]=fp(x)','y=3.5*x^(5/2)')
deff('[y]=fpp(x)','y=8.75*x^(3/2)')
deff('[y]=fppp(x)','y=(105*sqrt(x))/8')
deff('[y]=fpppp(x)','y=(105*x^(-0.5))/16')

x0=0;
x1=1;
x=x0:x1;

//    True value
I = integrate('x^(7/2)','x',x0,x1)

//    Using Trapezoidal rule

n=2;
h=(xn-x0)/n;
I1 = (xn-x0) * (f(x0)+f(xn)) /4;
E1 = -h^2 * (fp(xn)-fp(x0)) /12        //    Error

n=4;
h=(xn-x0)/n;
I2 = (xn-x0) * (f(x0)+f(xn)) /4;
E2 = -h^2 * (fp(xn)-fp(x0)) /12        //    Error

//    Using Simpson's rule

N=2;
h=(xn-x0)/N;
x1=x0+h;
x2=x0+2*h;
    I1 = h*(f(x0)+4*f(x1)+f(x2))/3
    E1 = -h^4*(xn-x0)*fpppp(0.5)/180

N=4;
h=(xn-x0)/N;
x1=x0+h;
x2=x0+2*h;
x3=x0+3*h;
x4=x0+4*h;
    I2 = h*(f(x0)+4*f(x1)+2*f(x2)+4*f(x3)+f(x4))/3
    E2 = -h^4*(xn-x0)*fpppp(0.5)/180
