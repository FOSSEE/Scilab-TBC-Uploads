//Eg-11.3
//pg-473

clc
clear

Cf = 10^(-6);
Ci = 10^(-5);
h = (Cf-Ci)/2;

deff('out = func(in)','out = -100/in')

t1 = func(Ci);
t2 = func(Ci+h);
t3 = func(Cf);

//Now the integration using the simpson's 1/3 rule I = (h/3)[f(a)+4f(a+h)+f(b)]
//h = (b-a)/2

I = (h/3)*(t1 + 4*t2 + t3);
I = abs(I);     //since integral we have to consider the absolute value

printf('The calculated value of the integral is %f\n',I)
printf(' The exact value of the integral is 230.3')