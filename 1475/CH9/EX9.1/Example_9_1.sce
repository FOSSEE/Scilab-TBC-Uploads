// Example 9.1 In order to construct a control a contol Chart
clc;
clear;
n=10;
R=0.20;
X=8.25;
A2=0.308;
UCL=X+(A2*R);
LCL=X-(A2*R);
disp(LCL,"Lower Control Limit =",UCL,"Upper Control Limit",A2,"Constant of conversion =",n," Sample Size =");
