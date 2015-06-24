//Example 3.15 The safety limit of a crane is known to be 32 tons
clc;
clear;
m=0.3;
s_d=0.2;
n=100;
disp(n,"Sample size =",s_d,"Standard Deviation",m,"Mean");
disp(s_d/sqrt(n),"and Standard Deviation =",0.3,"Since the sample size n=100 is large, the sample mean follows normal distribution approx. with Mean=");
disp(0.1587,"Probab. that mean is greater than 0.32=Area under the standard normal curve to the right of the ordinate at z=1",(0.32-m)/0.02,"The standarised value of sample mean 0.32 is ");
