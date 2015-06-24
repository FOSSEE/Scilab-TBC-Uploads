//Caption: Confidence Interval Estimation (when Sample Size is Large)
//Example7.11
//Page215
clc;
Var = 81; //variance of diameter of shafts produced
Std = sqrt(Var); //standard deviation
X = 30;//mean diameter
n = 36;//number of random samples
Alpha = 0.05; //significance level
Alpha = Alpha/2;
StdError = Std/sqrt(n);//standard error
Zstat = standard_normal_zstat(Alpha);//standard normal z statistic
CI = [X-Zstat*StdError,X+Zstat*StdError];
disp(CI,'Confidence level range in mm =')
//Result
//Confidence level range in mm =   
// 
//    27.06    32.94  