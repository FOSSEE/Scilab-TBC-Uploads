//Caption:Sampling Distribution of mean (When the population is infinite)
//When the population variance is known
//Example7.3
//Page202
clear;
clc;
n = 49;//Sample size
u = 4;//population mean in rupees Lakhs
Sig = 1;// populaion variance in rupees Lakh
Std = sqrt(Sig);
X = 4.25;//Sample Mean
[P,Q]=cdfnor("PQ",X,u,Std/sqrt(n))
disp(Q,'The Probaility that the sample mean greater than 4.25 lakhs is P(X>=4.25)=')
//Result
//The Probaility that the sample mean greater than 4.25 lakhs is P(X>=4.25)=   
//   0.0400592  