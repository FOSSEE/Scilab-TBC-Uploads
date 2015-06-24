//Two-tailed Tests Concerning Difference between Two Means
//(When the variances of the Populations are Known)
//Example8.18
//page260
//Test  : Ho:u1 =u2 or u1-u2=0
//        H1: u1#u2 or u1-u2#0
clc;
Sigma1 = input('Enter the variance of population1')
Sigma2 = input('Enter the varinace of population2')
n1 = input('Enter the sample size taken from population1')
n2 = input('Enter the sample size taken from population2')
X1 = input('Enter the mean of the sample1')
X2 = input('Enter the mean of the sample2')
alpha = input('Enter the significance level')
alpha = alpha/2;
//Calculation of Z statistic 
Z_X1_X2 = Norm_Dis_Diff_Two_Mean(X1,X2,Sigma1,Sigma2,n1,n2)
disp(Z_X1_X2,'calculated Normal Z-statistic =')
Z_alpha = standard_normal_zstat(alpha)
disp(Z_alpha,'Standard Normal Stastistic=')
if ((-Z_alpha < Z_X1_X2) &(Z_X1_X2< Z_alpha)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//Enter the variance of population1 5
//Enter the varinace of population2 9
//Enter the sample size taken from population1 64
//Enter the sample size taken from population2 81
//Enter the mean of the sample1 60
//Enter the mean of the sample2 61
//Enter the significance level 0.01
// 
// calculated Normal Z-statistic =   
// 
//  - 2.2987831  
// 
// Standard Normal Stastistic=   
// 
//    2.57  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted  