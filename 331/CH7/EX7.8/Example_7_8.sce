//Caption:F-distribution [Sampling Distributions of Variance]
//Different Variance
//Example7.8
//Page211
clear;
clc;
n1 = 8;//Size of the first sample
n2 = 20;// Size of the second sample
Sig1 = 100;//variance of the first sample
Sig2 = 40;//variance of the second sample
F = Sig1/Sig2;
Dfn = n1-1;
Dfd = n2-1;
[P,Q]=cdff("PQ",F,Dfn,Dfd)
disp(Q,'The probability that tha F ratio is more than the calculated F statistic=')
//Result
//The probability that the F ratio is more than the calculated F statistic=   
//     0.0531477  
 