//Caption:F-distribution [Sampling Distributions of Variance]
//Same Variance
//Example7.9
//Page211
clear;
clc;
n1 = 21;//Size of the first sample
n2 = 20;// Size of the second sample
F = 3; //variance of the first sample 3 times more than variance of second sample
Dfn = n1-1;
Dfd = n2-1;
[P,Q]=cdff("PQ",F,Dfn,Dfd)
disp(Q,'The probability that the variance of the first sample > 3 times that of the second sample is =')
//Result
//The probability that the variance of the first sample > 3 times that of the second sample is =   
//     0.0100558 