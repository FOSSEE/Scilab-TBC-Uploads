// example :5.15
// find the quadrature formula of
// integral of f(x)*(1/sqrt(x(1+x))) in the range [0,1]= a1*f(0)+a2*f(1/2)+a3*f(1)=I
// hence find integral 1/sqrt(x-x^3) in the range [0,1]

// making the method exact for polinomials of degree upto 2,
// I=I1=a1+a2+a3
// I=I2=(1/2)*a2+a3
// I=I3=(1/4)*a2+a3

// A=[a1 a2 a3]'

I1=integrate('1/sqrt(x*(1-x))','x',0,1)
I2=integrate('x/sqrt(x*(1-x))','x',0,1)
I3=integrate('x^2/sqrt(x*(1-x))','x',0,1)

//hence
//  [1 1 1;0 1/2 1 ;0 1/4 1]*A=[I1 I2 I3]'

A=inv([1 1 1;0 1/2 1 ;0 1/4 1])*[I1 I2 I3]'
// I=(3.14/4)*(f(0)+2*f(1/2)+f(1));

// hence,   for solving the integral 1/sqrt(x-x^3) in the range [0,1]=I

deff('[y]=f(x)','y=1/sqrt(1+x)');
I=(3.14/4)*[1+2*sqrt(2/3)+sqrt(2)/2]