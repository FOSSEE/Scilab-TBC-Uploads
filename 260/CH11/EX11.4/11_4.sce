//Eg-11.4
//pg-476

clc
clear

// velocity is given as a function of t. To find the distance travelled we simply need to integrate the velocity function over time interval.
//defining an inline function as given for simplicity.

deff('out = func(in)','out = 2*10^3 * log( 10^5 /(10^5-2*10^3*in) ) - 10*in')

b = 30; // t = 30 (upper limit)
a = 0; // t = 0 (lower limit)
n = 500; // number of intervals we consider
h = (b-a)/n; // stepsize
summation = 0; 

for(i = 1:499)
    F(i) = func(a+i*h);
    summation = summation + F(i);
end

I = h/2 * (func(a) + 2*summation + func(b));

printf('Performing the integration we get x = %f m\n',I)
