//Example 2.9 Five coins are tossed 3200 times      
clc;
clear;
function value = binomial(n, k, p)
value = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k));
endfunction
p=1/2;
n=5;
q=1/2;
disp(n,"No. of coins tossed =",p,"Proabab. of getting head (success) in a single trial");
P_0=binomial(n,0,p);
P_1=binomial(n,1,p);
P_2=binomial(n,2,p);
P_3=binomial(n,3,p);
P_4=binomial(n,4,p);
P_5=binomial(n,5,p);
EF=sum([P_0 P_1 P_2 P_3 P_4 P_5]*3200);
disp(sqrt(n*p*q),"Standard Deviation =",n*p,"Mean =",EF,"Efective frequency =");
