//Example 9.4 Based on 15 subgroups each of size 200 taken at intervals
clc;
clear;
n=200;
p=0.068;
CL=p;
UCL=p+3*(sqrt((p*(1-p)/n)));
LCL=p-3*(sqrt((p*(1-p)/n)));
disp(LCL,"Lower Control Limit =",UCL,"Upper Control Limit",CL,"Centre Line = ",p,"Average fraction defective =",n," Sample Size =");
