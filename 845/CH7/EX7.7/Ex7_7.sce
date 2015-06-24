//Example 7.7

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

n = 8;
ns13 = n/2;
I = simp13(log,1,5,ns13);
I = round(I*10^4)/10^4;
deff('[y] = true(x)',['y = x * log(x) - x']);
trueVal = true(5) - true(1);
err = abs(trueVal - I) / trueVal*100;
err = round(err*100)/100;

disp(I,"y_simp13 = ")
disp(trueVal,"Actual Integral = ")
disp(err,"error_simp13 = ")
