//Caption:Two-tailed Test Concerning Single Mean
//(When the variance of the Population is Known and the Population is finite)
//Example8.6
//Page240
//Test: Ho:u=k; H1:u!=k

clc;
N = input('Enter the population size')
u = input('Enter the Population Mean');
Sigma2 = input('Enter the Populaion variance');
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
//Enter the population size 1000
//Enter the Population Mean 10000
//Enter the Populaion variance 490000
//Enter the Sample Size 36
//Enter the Sample Mean 10250
//Enter the significance level 0.01
// 
// calculated Normal Z-statistic =   
// 
//    2.1814107  
// 
// Standard Normal Stastistic=   
// 
//    2.57  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted   
// 