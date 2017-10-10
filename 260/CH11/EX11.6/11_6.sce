//Eg-11.6
//pg-480

// Simplifying, the function to be integrated simplifies , we define an inline function as the same.

clear
clc

deff('out = func(in)','out = 5.093*10^(-5)*(exp(2*in) * (1+in^2)^(-2))')

a = 0;
b = 2;
h = (b-a)/3;

t1 = func(a);
t2 = func(a+h);
t3 = func(a+2*h)
t4 = func(b);


//Now the integration using the simpson's 1/3 rule, I = (h/3)[f(a)+4f(a+h)+f(b)]
//h = (b-a)/2

I = (3*h/8)*(t1 + 3*t2 + 3*t3 + t4);
I = abs(I);     //since integral we have to consider the absolute value

printf('Using simpsons 3/8 rule we get %f\n',I)