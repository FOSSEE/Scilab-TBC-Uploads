//Example 4.3 The following observations constitute a random sample from an unknown population
clear;
clc;
x=[14 19 17 20 25];
n=5;
M=sum(x)/n;
s_d=sqrt(sum((x-M)^2)/4);
SE=s_d/sqrt(n);
disp(SE,"Standard Error =",s_d,"Standard Mean",M,"Mean");
