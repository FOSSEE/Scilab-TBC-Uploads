//One-tailed Tests Concerning Difference between Two Means
//(When the variances of the Populations are UnKnown and the Sample Sizes are Small)
//Example8.21
//page267
//Test 2  : Ho:u1>=u2 or u1-u2>=0
//        H1: u1<u2 or u1-u2<0
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
t_X1_X2 = Students_t_Var_Unknown(X1,X2,Sigma1,Sigma2,n1,n2)
disp(t_X1_X2,'calculated Normal Z-statistic =')
t_alpha = stand_students_t_VarUnkn(alpha)
disp(t_alpha,'Standard Normal Stastistic=')
if (Test==1) then
    if(t_X1_X2 < t_alpha) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(t_X1_X2 > t_alpha) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(t_X1_X2 >-t_alpha) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(t_X1_X2<-t_alpha)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the varinace of population2 16
//Enter the sample size taken from population1 16
//Enter the sample size taken from population2 25
//Enter the mean of the sample1 58
//Enter the mean of the sample2 60
//Enter the significance level 0.01
//Enter the Type of test 2
//Sp=   11.384615  
//Sigma=   1.0802421  
//calculated Normal Z-statistic =  - 1.8514368  
//Standard Normal Stastistic=   2.326  
//It falls in the Acceptance Region   
//Then Null Hypothesis Ho should be Accepted  