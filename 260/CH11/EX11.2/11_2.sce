//Eg-11.2
//pg-472


// To find the work done  pressure is to be integrated with respect to volume which is compressed from 20 to 5 litres at 300k
// i.e integrating the function [RT/(V-b)-a/V^2] from 20 to 5. Here we take 500 intervals between the given limits 20 and 5.
// b and a represent the upper and lower limits of integration in the code below.
// Putting in the given values the function simplifies to [24.6/(V-0.065)-5.5/V^2].
clc
clear

deff('out =func(in)','out = 24.6/(in-0.065)-5.5/in^2')     //V is the in and P is the out.
b = 5;
a = 20;
n = 500;
summation = 0;

h = (b-a)/n;     //step size

for(i = 1:499)
    F(i) = func(a+i*h);
end

for(i = 1:499)
    summation = summation + F(i);
end

I = (h/2)*(func(a) + 2*summation + func(b));    //Composite version of the trapezoidal rule.

printf('The value of the integral and there by the work done is  %f litre atm\n\n',abs(I))

printf(' Using 500 segments ,this value is same as the exact value obtained analytically.\n However, when less number of segments(say 100) are used the numerical solution\n differs from the analytical one.')