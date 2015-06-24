clear all; clc;
disp("Ex 8_9")
T2=500//N
Beta=(3*%pi)/4//in radian
mu_s=0.25
a=exp(mu_s*Beta)
//T2=T1*exp^(mu_s*beta)
T1=T2/a
printf('\n\n T1 = %0.1f N',T1)
W=T1/a
printf('\n\n W = %0.1f N',W)
m=W/9.81
printf('\n\n m = %0.1f kg',m)
