//Example 4.15 A random sample of size 10 was drawn from a normal population with an unknown mean
clc;
clear;
n=10;
v=44.1;
x=[65 71 80 76 78 82 68 72 65 81];
m=sum(x)/n;
disp("inch",(m-1.96*sqrt(4.41)),"to",(m+1.96*sqrt(4.41)),"The 95% confidence interval   ",v,"variance =",m,"Mean =",n,"Sample size");
