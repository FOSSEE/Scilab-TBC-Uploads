// Example 1.53 The probabibility that an entering college student
clc;
clear;
function result= binomial(n, k, p)
 result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction
n=5;
k1=0;
k2=1;
p=0.4;
prob1=binomial(n , k1 , p);
prob2=binomial(n , k2 , p);
disp(1-prob1,"Probability that atleast one is graduate",prob2," Probability that one is graduate =",prob1, " Probability that none is a graduate=",p,"Probability that student will be graduate =",n,"No. of student entering the college =");
