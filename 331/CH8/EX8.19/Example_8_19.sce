//One-tailed Tests Concerning Difference between Two Means
//(When the variances of the Populations are UnKnown and the Sample Sizes are  Large)
//Example8.19
//page262
//Test 1  : Ho:u1<=u2 or u1-u2<=0
//        H1: u1>u2 or u1-u2>0
clc;
Sigma1 = input('Enter the variance of population1')
Sigma2 = input('Enter the varinace of population2')
n1 = input('Enter the sample size taken from population1')
n2 = input('Enter the sample size taken from population2')
X1 = input('Enter the mean of the sample1')
X2 = input('Enter the mean of the sample2')
alpha = input('Enter the significance level')
Test = input('Enter the Type of test')
//Calculation of Z statistic 
Z_X1_X2 = Norm_Dis_Diff_Two_Mean(X1,X2,Sigma1,Sigma2,n1,n2)
disp(Z_X1_X2,'calculated Normal Z-statistic =')
Z_alpha = standard_normal_zstat(alpha)
disp(Z_alpha,'Standard Normal Stastistic=')
if (Test==1) then
    if(Z_X1_X2 < Z_alpha) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Z_X1_X2 > Z_alpha) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(Z_X1_X2 >-Z_alpha) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Z_X1_X2<-Z_alpha)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the variance of population1 9
//Enter the varinace of population2 25
//Enter the sample size taken from population1 81
//Enter the sample size taken from population2 64
//Enter the mean of the sample1 70
//Enter the mean of the sample2 68
//Enter the significance level 0.05
//Enter the Type of test 1
// 
//calculated Normal Z-statistic =   
// 
//    2.8235294  
// 
//Standard Normal Stastistic=   
// 
//    1.64  
// 
//It falls in the Rejection Region   
// 
//Then Null Hypothesis Ho should be Rejected 