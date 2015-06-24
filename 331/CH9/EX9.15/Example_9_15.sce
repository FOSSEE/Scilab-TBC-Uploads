//Caption:Two-Samples Tests
//One-tailed two-samples sign test with normal approximation
//Example9.15
//page334
//Test 2: Ho: uX = uY or p = 1/2
//        H1: uX < uY or p < 1/2

clc;
n =14; //Number of observations of each sample
plus_signs = 4;
minus_signs = 10;
alpha = 0.1; //significance level
p = 1/2;
q = 1-p;
u = n*p; // its mean
Var = n*p*q; //its variance
Std = sqrt(Var);
Z_Calc = (plus_signs-u)/Std;
Z_Stand = standard_normal_zstat(alpha);
disp(Z_Calc,'Calculated Z value Zcal=')
disp(Z_Stand,'Standard Z statistic Zstand =')
if (Z_Calc > -Z_Stand) 
    disp('Since the calculated z value is greater than standard z value')
    disp('Accept Null Hypothesis Ho')
else
    disp('Since the calculated z value is less than standard z value')
    disp('Reject Null Hypothesis Ho')
end
//Result
//Calculated Z value Zcal=   
// 
//  - 1.6035675  
// 
// Standard Z statistic Zstand =   
// 
//    1.28  
// 
// Since the calculated z value is less than standard z value   
// 
// Reject Null Hypothesis Ho 