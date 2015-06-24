//Example 19.2
//Analysis of Wiredrawing
//Page No. 645
clc;clear;close;

alpha=12;                    //in degrees
r=0.2;                    //in %
mu=0.09;                    //no unit
n=0.3;                    //no unit
K=1300;                    //in MPa
v=3;                    //in m/s
B=mu*cotd(alpha/2);
e1=log(1/(1-r));
sigma_xa=K*e1^0.3/(n+1);
r1=1-((1-(B/(B+1)))^(1/B));
e=log(1/(1-r1));
sigma0=1300*e^0.3;
r2=1-(1-((sigma0/sigma_xa)*(B/(B+1)))^(1/B));
printf('\nBy First Approximation, r = %g\nBy Second Approximation, r = %g',r1,r2);
