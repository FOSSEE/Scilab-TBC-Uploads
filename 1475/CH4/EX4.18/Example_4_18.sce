// Example 4.18 A sample size 8 from a normal population yields as the unbiased estimate of population variance
clc;
clear;
n=8;
sd=4.4;
disp(((n-1)*(sd))/0.99,"to",((n-1)*(sd))/20.3,"The required 99% confidence limits for population proportion variance are  ")
