// Example 2.15 A random variable x follow Poisson distribution
clc;
clear;
m=3;
disp(m,"Parameter =");
function value = poisson(m, x)
value = (exp(-m)*(m^x))/(factorial(x));
endfunction
X_0=poisson(m,0);
X_1=poisson(m,1);
X_2=poisson(m,2);
X_3=poisson(m,3);

disp(X_0,"Probability when x=0 is ");
disp(X_1,"Probability when x=1 is ");
disp(X_2,"Probability when x=2 is ");
disp(X_3,"Probability when x=3 is ");
disp(X_0+X_1+X_2,"Probability when the variable assumes the value less than 3 is ");
disp(1-(X_0+X_1),"Probability when the variable assumes the value at least 2 is ");
