//Caption:Test of Hypotheses concerning Proportions
//Two-tailed Test Concerning Single Proportion
//Example8.25
//Page274
//Ho: p =k ; H1:p#k
clc;
p = 0.90; //90% of cases cured by new drugs
q = 1-p;
n = 80; //sample size
pbar = 68/n; //68 out of 80 patients are cured (sample proportion)
alpha = 0.05; //significance level
alpha = alpha/2;
Std = sqrt(p*q/n);
z_stand = standard_normal_zstat(alpha);
disp(z_stand,'The standard normal z statistic=') 
zp = (pbar-p)/Std;
disp(zp,'The calculated value z statistic =')
if ((-z_stand < zp) &(zp< z_stand)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//The standard normal z statistic=   
// 
//    1.96  
// 
// The calculated value z statistic =   
// 
//  - 1.490712  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted 