//Caption:Chi-square Distribution[Sampling Distributions of Variance]
//Example7.7
//Page210
clear;
clc;
n =20; //sample size
Sig = 81;//variance of mean annual sales of the population in Lakhs
S2 = 125;//Variance of mean annual sales of the population in Lakhs
Df = n-1; //degrees of freedom
X = ((n-1)*S2)/Sig;
[P,Q]=cdfchi("PQ",X,Df)
disp(Q,'The probability that the chi-square variable is > calculated chi-square statistic is =')
//Result
//The probability that the chi-square variable is > calculated chi-square statistic is =   
//     0.0611010  
// 