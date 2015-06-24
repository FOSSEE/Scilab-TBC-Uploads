// Example 1.54 A machine produces on the average 2 per cent defectives
clc;
clear;
function result= binomial(n, k, p)
 result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction
n=4;
k1=0;
k2=1;
p=0.02;
prob1=binomial(n , k1 , p);
prob2=binomial(n , k2 , p);
disp(1-(prob1+prob2),"Probability that atleast 2 defective articles ",prob2," Probability that there is exactly one success in 4 trial =",prob1, " Probability that there is exactly 0 success in 4 trial=",p,"Probability that article is defective =",n,"No. of articles chosen randomly =");
