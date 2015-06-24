// Example 2.20 In turning out certain toys
clc;
clear;
n=10;
p=0.1;
m=n*p;
function value = poisson(m, x)
value = (exp(-m)*(m^x))/(factorial(x));
endfunction
X_3=poisson(m,3);
disp(X_3,"Probability of 3 defective in the sample is ",);
