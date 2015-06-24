//One-tailed Tests Concerning Single Mean
//(When the variance of the Population is UnKnown and the Sample size is Large)
//Example8.7
//Page242
//Test1: Ho:u<=k; H1:u>k

clc;
u = input('Enter the Population Mean');
Sigma2 = input('Enter the Sample variance');
std = sqrt(Sigma2); //standard deviation 
n = input('Enter the Sample Size');
X = input('Enter the Sample Mean');
alpha = input('Enter the significance level');
Test = input('Enter the Type of test')
//Calculation of Z statistic 
Zx = nor_pop_unknown_large(X,u,std,n)
disp(Zx,'calculated Normal Z-statistic =')
Z_alpha = standard_normal_zstat(alpha)
disp(Z_alpha,'Standard Normal Stastistic=')
if (Test==1) then
    if(Zx < Z_alpha) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Zx > Z_alpha) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if (Zx > Z_alpha) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif (Zx < Z_alpha)then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the Population Mean 5
//Enter the Sample variance 1
//Enter the Sample Size 81
//Enter the Sample Mean 5.25
//Enter the significance level 0.1
//Enter the Type of test 1
// 
// calculated Normal Z-statistic =   
// 
//    2.25  
// 
// Standard Normal Stastistic=   
// 
//    1.28  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected   
// 