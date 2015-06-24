// Example 2.8 Three coins are tossed
clc;
clear;
function value = binomial(n, k, p)
value = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k));
endfunction
p=1/2;
n=3;
disp(n,"No. of independent trials =",p,"Proabab. of success in a single trial");
P_0=binomial(n,0,p);
P_1=binomial(n,1,p);
P_2=binomial(n,2,p);
P_3=binomial(n,3,p);
disp(1-(P_0),"Prob. of at least one success",P_2 + P_3,"Prob of more than one success",P_3,"Prob. of 3 success",P_2, "Prob. of 2 success",P_1,"Prob. of 1 success",P_0,"Prob. of 0 success");
