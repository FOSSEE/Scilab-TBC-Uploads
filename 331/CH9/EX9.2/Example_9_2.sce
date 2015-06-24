//Caption: One-Sample Tests
//One-sample Sign Test for small samples
//Example9.2
//Page313
//Test 2: Ho: p =1/2, H1: p< 1/2
clear;
clc;
n = 8;//sample size
p =0.5;
q = 1-p;
alpha = 0.05;//significance level
plus_signs = 2;
minus_signs = 7;
//The binomial probability that the number of plus signs <=2
X =2;
[P,Q]=cdfbin("PQ",X,n,p,q);
disp(P,'The binomial probability that the number of plus signs P(X<=2)=')
if (P>alpha) then
    disp('Sine it is greater than significance level, the binomial statistic falls')
    disp('in the acceptance region')
else
    disp('Since it is less than significance level, the binomial statistic falls')
    disp('in the rejection region and the null hypothesis should be rejected')
end
//Result
//The binomial probability that the number of plus signs P(X<=2)=   
// 
//    0.1445313  
// 
// Sine it is greater than significance level, the binomial statistic falls   
// 
// in the acceptance region 