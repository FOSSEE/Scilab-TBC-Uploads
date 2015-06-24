//Example 2.10 the overall percentage of failure    
clc;
clear;
function value = binomial(n, k, p)
value = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k));
endfunction
q=40/100;
n=6;
p=1-q;
disp(n,"No. of candidates =",p,"Proabab. of(success) in a single trial",q,"Probab. of failure of a candidate");
P_4=binomial(n,4,p);
P_5=binomial(n,5,p);
P_6=binomial(n,6,p);
disp(P_4+P_5+P_6,"Required Probability =");
