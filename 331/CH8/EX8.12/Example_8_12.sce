//Two-tailed Tests Concerning Single Mean
//(When the variance of the Population is UnKnown and the Sample Size is Large)
//Example8.12
//Page250
//Test: Ho:u=k; H1:u#k


clc;
N = input('Enter the Population size');
u = input('Enter the Population Mean');
Sigma2 = input('Enter the Sample variance');
std = sqrt(Sigma2); //standard deviation 
n = input('Enter the Sample Size');
X = input('Enter the Sample Mean');
alpha = input('Enter the significance level');
alpha = alpha/2;
//Calculation of Z statistic 
Zx = nor_dist_stat_finite_po(X,u,std,n,N)
disp(Zx,'calculated Normal Z-statistic =')
Z_alpha = standard_normal_zstat(alpha)
disp(Z_alpha,'Standard Normal Stastistic=')
if ((-Z_alpha < Zx) &(Zx< Z_alpha)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//Enter the Population size 1000
//Enter the Population Mean 10
//Enter the Sample variance 0.64
//Enter the Sample Size 64
//Enter the Sample Mean 9.8
//Enter the significance level 0.05
// 
// calculated Normal Z-statistic =   
// 
//  - 2.0662117  
// 
// Standard Normal Stastistic=   
// 
//    1.96  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected  