        //    PG (297)

deff('[y]=f(x)','y=exp(x)*cos(x)')
a=0;
b=%pi;
h=1;

//    True value

I = integrate('exp(x)*cos(x)','x',a,b)

//    Using Romberg integration

Romberg(a,b,f,h)