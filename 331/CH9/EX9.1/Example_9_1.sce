//Caption: One-Sample Tests
//One-sample Sign Test for small samples
//Example9.1
//Page313
//Test 1: Ho: p =1/2, H1: p>1/2
clear;
clc;
n = 9;//sample size
p = 0.5;
q = 1-p;
plus_signs = 7;
minus_signs = 2;
alpha = 0.05; //significance level
//P(X>=7, n=9, p =0.5) =1-P(X<=6, n=9, p=0.5)
X = 6;//Number plus signs is more than or equal to 7 
[P,Q]=cdfbin("PQ",X,n,p,q);
disp(Q,'The binomial probability that the number of plus signs is >=7 is P(X>=7)=')
if (Q>alpha) then
    disp('Sine it is greater than significance level, the binomial statistic falls')
    disp('in the acceptance region')
else
    disp('Since it is less than significance level, the binomial statistic falls')
    disp('in the rejection region and the null hypothesis should be rejected')
end
//Result
//The binomial probability that the number of plus signs is >=7 is P(X>=7)=   
// 
//    0.0898438  
// 
// Sine it is greater than significance level, the binomial statistic falls   
// 
// in the acceptance region   
// 