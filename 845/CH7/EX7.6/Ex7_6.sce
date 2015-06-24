//Example 7.6

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

n = 6;
ntrap = n;
ns13 = n/2;
I = [trap(sin,0,%pi,ntrap); simp13(sin,0,%pi,ns13)];
I = round(I*10^4)/10^4;
true = integrate('sin(x)','x',0,%pi);
err = abs(true - I) / true*100;
err = round(err*100)/100;

disp(I(1),"y_trap = ")
disp(I(2),"y_simp13 = ")
disp(err(1),"error_trap = ")
disp(err(2),"error_simp13 = ")
