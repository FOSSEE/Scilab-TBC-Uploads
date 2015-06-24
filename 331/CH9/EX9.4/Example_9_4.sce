//Caption:One-tailed One-sample test for large sample
//Example9.4
//Page316
//Test 1: Ho: u = 100,p =1/2, H1: u >100, p> 1/2

clc;
n = 36;//sample size
p = 0.5;
q = 1-p;
plus_signs = 24;
minus_signs = 11;
zeros_num = 1;
alpha = 0.05; //significance level
Mean = n*p;
Var = n*p*q;
Std = sqrt(Var);
X = plus_signs;
Z_cal = (X-Mean)/Std;
Z_std = standard_normal_zstat(alpha)
disp(Z_cal,'The calculated z statistic Z=')
disp(Z_std,'The standard z statistic Z=')
if (Z_cal > Z_std) then
    disp('It falls in the Rejection Region')
    disp('Then Null Hypothesis Ho should be Rejected')
else
    disp('It falls in the Acceptance Region')
    disp('Then Null Hypothesis Ho should be Accepted')
end
//Result
//The calculated z statistic Z=   
// 
//    2.  
// 
// The standard z statistic Z=   
// 
//    1.64  
// 
//It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected