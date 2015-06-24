//Caption: Confidence Interval Estimation (when Sample Size is Small)
//Example7.12
//Page216
clear;
clc;
X = 20;// mean diameter of the shafts in mm
Var = 9;// variance of the safts in mm
Std = sqrt(Var);//standard deviation 
n = 16;// number of samples
alpha = 0.05;//confidence level
alpha = alpha/2;
talpha = 2.1311;//students t dstribution
StdErr = Std/sqrt(n);
CI = [X-talpha*StdErr,X+talpha*StdErr]
disp(CI,'The Confidenc Interval u =')
//Result
//The Confidenc Interval u =   
// 
//    18.401675    21.598325 