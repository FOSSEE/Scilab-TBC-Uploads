// Example 2.6
clc;
clear;
close;
// Given data
format('v',5);
Ad= 100;// differential mode gain
Acm= 0.01;// common mode gain
CMRR= Ad/Acm;
CMRR_desh= 20*log10(CMRR);// CMRR in dB
disp(CMRR_desh,"CMRR in dB is : ");



