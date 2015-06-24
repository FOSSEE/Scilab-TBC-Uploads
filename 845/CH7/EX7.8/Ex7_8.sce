//Example 7.8

clc
clear

function [I] = trap (fun,a,b,n)
// Integrate the function over the interval using Trapezoidal Formula
// trap (fun,a,b,n)
// fun - function to be integrated
// a - lower limit of integration
// b - upper limit of integration
// n - No. of times trapezoidal rule needs to be performed

N = n + 1;  // N - total no. of points
h = (b-a) / (N-1);
x = linspace(a,b,N);
y = fun(x);

sum1 = y(1) + 2 * sum(y(2:N-1)) + y(N);
I = h * sum1 / 2;                   // Trapezoidal Integral Value
endfunction

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
    f = 1 ./(1+x^2);
endfunction


n = 4;
ntrap = n;
ns13 = n/2;
I = [trap(fun1,0,1,ntrap); simp13(fun1,0,1,ns13)];
I = round(I*10^4)/10^4;
true = intg(0,1,fun1);

disp(I(1),"y_trap = ")
disp(I(2),"y_simp13 = ")
disp(I(2)*4,"Approx pi = ")
