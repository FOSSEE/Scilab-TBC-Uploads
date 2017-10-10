//    PG (258)

deff('[y]=f(x)','y=exp(x)*cos(x)')
x0=0;
xn=%pi;
x=x0:xn;

//    True value

I = integrate('exp(x)*cos(x)','x',x0,xn)

//    Using Simpson's rule

N=2;
h=(xn-x0)/N;
x1=x0+h;
x2=x0+2*h;
    I1 = h*(f(x0)+4*f(x1)+f(x2))/3

N=4;
h=(xn-x0)/N;
x1=x0+h;
x2=x0+2*h;
x3=x0+3*h;
x4=x0+4*h;
    I2 = h*(f(x0)+4*f(x1)+2*f(x2)+4*f(x3)+f(x4))/3

N=8;
h=(xn-x0)/N;
x1=x0+h;
x2=x0+2*h;
x3=x0+3*h;
x4=x0+4*h;
x5=x0+5*h;
x6=x0+6*h;
x7=x0+7*h;
x8=x0+8*h;
    I3 = h*(f(x0)+4*f(x1)+2*f(x2)+4*f(x3)+2*f(x4)+4*f(x5)+2*f(x6)+4*f(x7)+f(x8))/3