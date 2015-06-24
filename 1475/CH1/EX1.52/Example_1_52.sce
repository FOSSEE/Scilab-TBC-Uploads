// Example 1.52 A coin is tossed 10 times
clc;
clear;
function result= binomial(n, k, p)
 result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction
n=10;
k1=6;
k2=9;
p=1/2;
prob1=binomial(n , k1 , p);
prob2=binomial(n , k2 , p);
disp(prob2," Probability of getting exactly 9 heads and 1 tail=",prob1, " Probability of getting exactly 6 heads=",p,"Probability of success=",n,"No. of time a coin is tossed=");
