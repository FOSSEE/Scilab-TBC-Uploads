// Example 2.21 2 percent of items made by a machine are defective
clc;
clear;
n=100;
p=2/100;
m=n*p;
disp(m,"Mean is n*p =",p,"probab. of defective items",n,"Total sample of item");
function value = poisson(m, x)
value = (exp(-m)*(m^x))/(factorial(x));
endfunction
X_0=poisson(m,0);
X_1=poisson(m,1);
X_2=poisson(m,2);
disp(1-(X_0 + X_1 + X_2),"Probability of 3 or more defective in the sample is ",);
