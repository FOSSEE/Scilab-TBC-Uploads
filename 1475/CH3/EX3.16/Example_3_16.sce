//Example 3.16 It has been found 2 percent of tools
clc;
clear;
m=0.02;
p=m;
q=1-p;
n=400;
s_d=sqrt((p*q)/n);
disp(n,"Sample size =",s_d,"Standard Deviation",m,"Mean");
disp("Since the sample size n=400 is large, the sample mean follows normal distribution ");
disp(0.5-0.4236,"Probab. that the sample proportion p exceeds 0.03 = Area under the standard normal curve to the right of the ordinate at z= (0.03-0.02)/0.007",(0.03-0.02)/0.007,"The standarised value of z is ");
