//    PG (220)

deff('[y]=f(x)','y=exp(x)')

//    Chebyshev expansion coefficients for exp(x)
//    j = 0
C0=2*(integrate('exp(cos(x))','x',0,3.14))/(3.14)

//    j = 1
C1=2*(integrate('exp(cos(x))*cos(x)','x',0,3.14))/(3.14)

//    j = 2
C2=2*(integrate('exp(cos(x))*cos(2*x)','x',0,3.14))/(3.14)

//    j = 3
C3=2*(integrate('exp(cos(x))*cos(3*x)','x',0,3.14))/(3.14)

//    j = 4
C4=2*(integrate('exp(cos(x))*cos(4*x)','x',0,3.14))/(3.14)

//    j = 5
C5=2*(integrate('exp(cos(x))*cos(5*x)','x',0,3.14))/(3.14)

//    we obtain
x=0:.01:%pi;                // defining the range of x

c1=1.266+1.130*x;
c3=0.994571+0.997308*x+0.542991*x.^2+0.177347*x.^3;
norm(exp(x)-c1,'inf')
norm(exp(x)-c3,'inf')