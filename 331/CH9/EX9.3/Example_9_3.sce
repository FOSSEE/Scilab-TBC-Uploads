//Caption: Two-tailed sign test for small sample
//Example9.3
//Page314
//Ho: p =1/2, H1: p#1/2
clear;
clc;
n =9;//sample size
p = 0.5;
q = 1-p;
alpha = 0.1;
alpha = alpha/2;//significance level
plus_signs = 8;
minus_signs = 1;
//Binomial probability that the number of plus signs >=8
X =7;
[P,Q]=cdfbin("PQ",X,n,p,q);
disp(Q,'The binomial probability that the number of plus signs P(X>=7)=')
if (Q>alpha) then
    disp('Sine it is greater than significance level, the binomial statistic falls')
    disp('in the acceptance region')
else
    disp('Since it is less than significance level, the binomial statistic falls')
    disp('in the rejection region and the null hypothesis should be rejected')
end
//Result
//The binomial probability that the number of plus signs P(X>=7)=   
// 
//    0.0195312  
// 
// Since it is less than significance level, the binomial statistic falls   
// 
// in the rejection region and the null hypothesis should be rejected   
 