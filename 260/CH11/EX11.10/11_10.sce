//Eg-11.10
//pg-490

clear
clc

//The exact value of the integration can be found by analytical integration (here using the inbuilt scilab function 'intg')

deff('out = func(in)','out = (in^3-3)')

I = intg(-1,1,func);

printf('The exact value of the integral found analytically is %f\n',I)
//The two-point Gauss-Legendre quadrature formula is 
//    I = w0*f(x0) + w1*f(x1)
//From table 11.3 we have foe the two-point formula, the values of wi and xi.

w0 = 1;
w1 = 1;
x0 = -0.57735027;
x1 = 0.57735027;

//Hence I = f(x0) + f(x1).

I1 = func(x0) + func(x1);

printf(' The value of the integral calculated using Gauss-Legendre formula is %f\n',I1)
printf('\n Note that the two-point Gauss-Legendre formula gives the exact value of the integral\n for a cubic function. The same accuracy could have been achieved with Simpsons 1/3rd\n rule, but at the cost of one additional function evaluation. Therefore, the gauss-\n Legendre method is compuationally more efficient.')