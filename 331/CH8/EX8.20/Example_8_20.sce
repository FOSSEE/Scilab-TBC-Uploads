//Two-tailed Test Concerning Difference between Two Means
//(When the variances of the Populations are UnKnown and the Sample Sizes are  Large)
//Example8.20
//page265
//Test  : Ho:u1=u2 or u1-u2=0
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
//Enter the variance of population1 9
//Enter the varinace of population2 36
//Enter the sample size taken from population1 50
//Enter the sample size taken from population2 80
//Enter the mean of the sample1 21
//Enter the mean of the sample2 23
//Enter the significance level 0.01
// 
// calculated Normal Z-statistic =   
// 
//  - 2.5197632  
// 
// Standard Normal Stastistic=   
// 
//    2.57  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted 