//Caption: Two-tailed one-sample sign test for large sample
//Example9.6
//Page319

clc;
n = 36; //number of samples
p = 1/2;
q = 1-p;
Mean = n*p;
Var = n*p*q;
Std = sqrt(Var);
alpha = 0.05; //significance level
alpha = alpha/2;
plus_signs = 25; //if it is more than 75
minus_signs = 10; //if it is less than 75
no_of_zeros = 1;
X = 25; //number of plus signs
Z_calc = (X-Mean)/Std;
Z_stand = standard_normal_zstat(alpha);
disp(Z_calc,'The calculated z statistic Z=')
disp(Z_stand,'The standard z statistic Z=')
if (Z_calc > Z_stand) then
    disp('It falls in the Rejection Region')
    disp('Then Null Hypothesis Ho should be Rejected')
else
    disp('It falls in the Acceptance Region')
    disp('Then Null Hypothesis Ho should be Accepted')
end
//Result
//The calculated z statistic Z=   
// 
//    2.3333333  
// 
// The standard z statistic Z=   
// 
//    1.96  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected  