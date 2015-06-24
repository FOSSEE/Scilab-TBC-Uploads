// Example 2.7
clc;
clear;
close;
// Given data
format('v',5);
Ad= 10^5;// differential mode gain
CMRR= 10^5;
// Common-mode gain,
Acm= Ad/CMRR;
disp(Acm,"The common-mode gain is : ");



