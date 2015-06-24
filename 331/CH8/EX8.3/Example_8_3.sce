//Two-tailed Tests Concerning Single Mean
//(When the variance of the Population is Known and the Population is infinite)
//Example8.3
//Page234
//Test: Ho:u=k; H1:u#k

clc;
u = input('Enter the Population Mean');
Sigma2 = input('Enter the Populaion variance');
std = sqrt(Sigma2); //standard deviation 
n = input('Enter the Sample Size');
X = input('Enter the Sample Mean');
alpha = input('Enter the significance level');
alpha = alpha/2;
//Calculation of Z statistic 
Zx = normal_distribution_stat(X,u,std,n)
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
//Enter the Population Mean 50
//Enter the Populaion variance 100
//Enter the Sample Size 64
//Enter the Sample Mean 52
//Enter the significance level 0.01
// 
//calculated Normal Z-statistic = 1.6  
//Standard Normal Stastistic=     2.57  
//It falls in the Acceptance Region   
//Then Null Hypothesis Ho should be Accepted   