//Caption:Run Test for Randomness
//Example9.11
//Page326
//run test of randomness of large samples
//Ho: The occurrence of the runs of the given stream of symbols (W,L) is random
//H1: The occurrence of the runs of the given stream of symbols (W,L) is not random

clc;
n1 = 24; //Frequency of occurrence of letter 'W'
n2 = 16; //Frequency of occurrence of letter 'L'
r = 17;//number or runs
alpha = 0.05;//significance level
alpha = alpha/2;
Mean_r = ((2*n1*n2)/(n1+n2))+1;
Var_r = (2*n1*n2)*(2*n1*n2-n1-n2)/(((n1+n2)^2)*(n1+n2-1));
Std = sqrt(Var_r);
Z_calc = (r-Mean_r)/Std;
Z_Stand = standard_normal_zstat(alpha);
disp(Mean_r,'Mean of r u =')
disp(Var_r,'variance of r =')
disp(Std,'Standard deviation of r =')
disp(Z_calc,'Calculated Z value = ')
disp(Z_Stand,'Standard z value from table=')
if (Z_calc>-Z_Stand)&(Z_calc<Z_Stand) then
    disp('Since calculated Z value lies in between -Z and + Z from table value Accept Null Hypotheis Ho')
else
    disp("Reject Null Hypothesis Ho')
end
//Result
//Mean of r u =   
// 
//    20.2  
// 
// variance of r =   
// 
//    8.96  
// 
// Standard deviation of r =   
// 
//    2.9933259  
// 
// Calculated Z value =    
// 
//  - 1.069045  
// 
// Standard z value from table=   
// 
//    1.96  
// 
// Since calculated Z value lies in between -Z and + Z from table value Accept Null Hypotheis Ho   
// 