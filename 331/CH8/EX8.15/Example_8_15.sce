//Two-tailed Tests Concerning Single Mean(when the variance of the Population is
// Unknown and the Sample Size is Small)
//Example8.15
//page254
// Ho:u=k; H1:u#k
clc;

u = input('Enter the Population Mean');
Sigma2 = input('Enter the Sample variance');
std = sqrt(Sigma2); //standard deviation 
n = input('Enter the Sample Size');
X = input('Enter the Sample Mean');
alpha = input('Enter the significance level');
alpha = alpha/2;
//Calculation of students t distribution 
t = students_t_distri(X,u,std,n) 
disp(t,'calculated students t distribution =')
t_alpha = stand_students_t_distri(alpha)
disp(t_alpha,'Standard students t distribution=')
if ((-t_alpha < t) &(t<t_alpha)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//Enter the Population Mean 150
//Enter the Sample variance 100
//Enter the Sample Size 25
//Enter the Sample Mean 145
//Enter the significance level 0.05
// 
// calculated students t distribution =   
// 
//  - 2.5  
// 
// Standard students t distribution=   
// 
//    2.064  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected 