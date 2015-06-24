//Caption: Two-Samples Tests
//Two-tailed two-samples sign test with binomial distribution
//Example9.13
//Page331
//Test  : Ho: uX = uY or p = 1/2
//        H1: uX # uY or p # 1/2
clear;
clc;
n = 8; //Number of observations of each sample
plus_signs = 6;
minus_signs = 2;
alpha = 0.05; //significance level
X = 5;//number of plus signs more than minus signs
p = 1/2;
q = 1-p;
[P,Q]=cdfbin("PQ",X,n,p,q);
disp(Q,'The binomial propability no. of plus signs > minus signs P(X>=6)=')
if (Q>alpha) then
    disp('Since P(Q>=6) is more than the significance level of 0.05')
    disp('It falls in the acceptance region and accpt Ho')
else
    disp('Reject Null Hypothesis Ho')
end
//Result
//The binomial propability no. of plus signs > minus signs P(X>=6)=   
// 
//    0.1445313  
// 
// Since P(Q>=6) is more than the significance level of 0.05   
// 
// It falls in the acceptance region and accpt Ho 