//Caption: Sample Size for Determining Sample Proportion
//Example7.15
//Page220
clc;
p =0.35;//35% of branches have enhanced yearly collection of deposits 
q = 1-p;
D = 0.06;// deviation of mean sample size
Conf_Level = 0.90; //confidence level = 90%
alpha = 0.1; //Significance level
alpha = alpha/2;
z = standard_normal_zstat(alpha)
n = ((z^2)*p*q)/(D^2);
disp(ceil(n),'Sample Size n =')
//Result
//Sample Size n =   
// 
//  170