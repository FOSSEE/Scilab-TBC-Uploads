//One-tailed Tests Concerning Single Mean(when the variance of the Population is
// Unknown and the Sample Size is Small)
//Example8.13
//page252
//Test1: Ho:u<=k; H1:u>k
clc;

u = input('Enter the Population Mean');
Sigma2 = input('Enter the Sample variance');
std = sqrt(Sigma2); //standard deviation 
n = input('Enter the Sample Size');
X = input('Enter the Sample Mean');
alpha = input('Enter the significance level');
Test = input('Enter the Type of test')
//Calculation of students t distribution 
t = students_t_distri(X,u,std,n) 
disp(t,'calculated students t distribution =')
t_alpha = stand_students_t_distri(alpha)
disp(t_alpha,'Standard students t distribution=')
if (Test==1) then
    if(t < t_alpha) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(t > t_alpha) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(t>-t_alpha) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(t<-t_alpha)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the Population Mean 60
//Enter the Sample variance 25
//Enter the Sample Size 16
//Enter the Sample Mean 63
//Enter the significance level 0.01
//Enter the Type of test 1
// 
// calculated students t distribution =   
// 
//    2.4  
// 
// Standard students t distribution=   
// 
//    2.602  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted 