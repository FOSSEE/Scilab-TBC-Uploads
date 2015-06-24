//Caption: Sample Size for Determining Sample Mean
//Example7.14
//Page219

clc;
Var = 64;//  variance of axial length of pistons in mm
Std = sqrt(Var);
D = 2;// deviation from mean length in mm
alpha = 0.05;//significance level
alpha = alpha/2;
z = standard_normal_zstat(alpha)
n = (z*Std/D)^2;
disp(ceil(n),'Sample Size n =')
//Result
//Sample Size n =   
// 
//    62.  