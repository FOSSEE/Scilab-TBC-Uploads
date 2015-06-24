//Example 4.13 A random sample of 100 articles taken from alarge batch of article contains 5 defective article
clc;
clear;
n=100;
p=5/100;
q=1-p;
N=2646;
SE=sqrt((p*q)/n);
disp((p-2.05*SE),"to",(p+2.05*SE),"The 96% confidence limits for Pare  ",N,"Population size N",n,"Sample size");
S_E=sqrt(p*q/(n))*sqrt((N-n)/(N-1));
disp((p-1.96*S_E),"to",(p+1.96*S_E),"The required 95% confidence limits for P are  ");
