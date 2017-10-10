//Eg-11.5
//pg-477

clear
clc

//defining an inline function for simplicity and integrating it from x = 0 to 0.9

deff('out = func(in)','out = 0.3 + 1.6*in + 0.027*in^2')

h = (0.9-0)/3; //Stepsize
b = 0.9;
a = 0;

//Integrating using the simpsons 1/3rd rule

I = (3*h/8)*(func(a) + 3*func(a+h) + 3*func(a+2*h) + func(b));

printf('The value of the integration is %f\n',I)
printf(' Since the function to be integrated is a quadratic, the value of the integral is exact')