//Caption:One-tailed One-sample test for large sample
//Example9.5
//Page317
//Test 2: Ho: u = 8,p =1/2, H1: u < 8, p < 1/2

clc;
n = 40;//sample size
p = 0.5;
q = 1-p;
plus_signs = 11;
minus_signs = 25;
zeros_num = 4;
alpha = 0.01; //significance level
Mean = n*p;
Var = n*p*q;
Std = sqrt(Var);
X = plus_signs;
Z_cal = (X-Mean)/Std;
Z_std = standard_normal_zstat(alpha)
disp(Z_cal,'The calculated z statistic Z=')
disp(Z_std,'The standard z statistic Z=')
if (Z_cal < Z_std) then
    disp('It falls in the Rejection Region')
    disp('Then Null Hypothesis Ho should be Rejected')
else
    disp('It falls in the Acceptance Region')
    disp('Then Null Hypothesis Ho should be Accepted')
end
//Result
//The calculated z statistic Z=   
// 
//  - 2.8460499  
// 
// The standard z statistic Z=   
// 
//    2.33  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected 