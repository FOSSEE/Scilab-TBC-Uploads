//Example 4.14 10 life Insurance policies in a sample of 200 taken out of 50,000 were found to be insured for less than Rs 500
clc;
clear;
N=50000;
n=200;
p=10/200;
q=1-p;
S_E=sqrt(p*q/(n))*sqrt((N-n)/(N-1));
disp((p-1.96*S_E)*N,"and",(p+1.96*S_E)*N,"The number of each policies lies between   ",(p-1.96*S_E),"to",(p+1.96*S_E),"The required 95% confidence limits for population proportion P are  ");
