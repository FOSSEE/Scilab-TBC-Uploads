// Example 9.6 Measurements on average x and range 
clc;
clear;
S_D=3.017;
x=99.6;
R=7.0;
n=5;
SE=S_D/sqrt(n);
UCL=x+3*(S_D/sqrt(n));
LCL=x-3*(S_D/sqrt(n));
disp(LCL,"Lower Control Limit =",UCL,"Upper Control Limit",SE,"Standard Error = ",x,"Mean Average =",R,"Mean Range =",n," Sample Size =");
