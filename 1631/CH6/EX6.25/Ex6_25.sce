//Caption: roll of factor
//Example 6.25
//page no 307
//Find The roll of factor alpha
clc;
clear;
datarate=0.1*10^6;
fB=75000; //bandwidth
Tb=1/datarate;
alpha=2*fB*Tb-1
disp(alpha,"factor alpha = ")
