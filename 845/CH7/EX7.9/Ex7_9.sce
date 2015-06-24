//Example 7.9

clc
clear

function [I] = simp13 (fun,a,b,n)
// Integrate the function over the interval using Simpson's 1/3rd rule
// simp13 (fun,a,b,n)
// fun - function to be integrated
// a - lower limit of integration
// b - upper limit of integration
// n - No. of times simpson's 1/3rd rule needs to be performed

N = 2 * n + 1;      // N - total no. of points
h = (b-a) / (N-1);
x = linspace(a,b,N);
y = fun(x);

sum1 = y(1) + 4 * sum(y(2:2:N-1)) + 2 * sum(y(3:2:N-2)) + y(N);
I = h* sum1 / 3;                    // Simpson's 1/3rd Integral Value
endfunction

function [f] = fun1(x)
    f = sqrt(2/%pi)*exp(-x^2/2);
endfunction

h = 0.125;
n = (1-0)/h;
ns13 = n/2;
I = simp13(fun1,0,1,ns13);
I = round(I*10^4)/10^4;

disp(I,"Integral value, I = ")
