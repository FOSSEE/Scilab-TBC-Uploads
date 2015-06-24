//Caption: Confidence Interval for Proportion
//Example7.13
//Page217

clc;
p = 0.40;// 40% of retailers enhance weekly sales 
q = 1-p;
n =  64;// number of samples
//pbar: proportion of success
pbar = 32/n;//32 out of 64 are having enhanced sales after displaying advertisement
Var = (p*q)/n; //variance
Std = sqrt(Var);
alpha = 0.1;
alpha = alpha/2;
z = standard_normal_zstat(alpha);
CI = [pbar-z*Std,pbar+z*Std];
disp(CI,'Confidence Interval of Proportion CI=')
//Result
//Confidence Interval of Proportion CI=   
// 
//    0.3995709    0.6004291 