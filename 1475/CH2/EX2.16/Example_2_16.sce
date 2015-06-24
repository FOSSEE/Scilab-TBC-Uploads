// Example 2.16 A business firm receives on an average 
clc;
clear;
m=2.5;
disp(m,"Average call =");
function value = poisson(m, x)
value = (exp(-m)*(m^x))/(factorial(x));
endfunction
X_0=poisson(m,0);
X_4=poisson(m,4);
disp(X_0,"Probability of no call is ");
disp(X_4,"Probability of exactly 4 call is ");
