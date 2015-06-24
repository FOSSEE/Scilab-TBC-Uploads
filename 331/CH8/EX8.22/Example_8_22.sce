//Two-tailed Test Concerning Difference between Two Means
//(When the variances of the Populations are UnKnown and the Sample Sizes are  Large)
//Example8.22
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
Z_X1_X2 = Students_t_Var_Unknown(X1,X2,Sigma1,Sigma2,n1,n2)
disp(Z_X1_X2,'calculated Normal Z-statistic =')
Z_alpha = stand_students_t_VarUnkn(alpha)
disp(Z_alpha,'Standard Normal Stastistic=')
if ((-Z_alpha < Z_X1_X2) &(Z_X1_X2< Z_alpha)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//Enter the variance of population1 2.5
//Enter the varinace of population2 4
//Enter the sample size taken from population1 16
//Enter the sample size taken from population2 20
//Enter the mean of the sample1 38.5
//Enter the mean of the sample2 40
//Enter the significance level 0.1
//Sp=   3.3382353  
//Sigma=   0.6128225  
//calculated Normal Z-statistic = - 2.4476906  
//Standard Normal Stastistic=     1.645  
//It falls in the Rejection Region   
//Then Null Hypothesis Ho should be Rejected 