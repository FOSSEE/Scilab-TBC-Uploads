//Caption:Two-Samples Tests
//Two-tailed two-samples sign test with normal approximation
//Example9.16
//page336
//Test 2: Ho: uX = uY or p = 1/2
//        H1: uX # uY or p # 1/2

clc;
n = 20; //Number of observations of each sample
plus_signs = 7;
minus_signs = 13;
alpha = 0.1; //significance level
alpha = alpha/2;
p = 1/2;
q = 1-p;
u = n*p; // its mean
Var = n*p*q; //its variance
Std = sqrt(Var);
Z_Calc = (plus_signs-u)/Std;
Z_Stand = standard_normal_zstat(alpha);
disp(Z_Calc,'Calculated Z value Zcal=')
disp(Z_Stand,'Standard Z statistic Zstand =')
if (Z_Calc > -Z_Stand) & (Z_Calc < Z_Stand)
    disp('Since the calculated z value is lies in between -Zalpha<Zcal<Zalpha')
    disp('Accept Null Hypothesis Ho')
else
    disp('Since the calculated z value falls in the rejection region')
    disp('Reject Null Hypothesis Ho')
end
//Result
//Calculated Z value Zcal=   
// 
//  - 1.3416408  
// 
// Standard Z statistic Zstand =   
// 
//    1.64  
// 
// Since the calculated z value is lies in between -Zalpha<Zcal<Zalpha   
// 
// Accept Null Hypothesis Ho  