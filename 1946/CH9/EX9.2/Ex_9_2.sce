// Example 9.2;//photocurrent 
clc;
clear;
close;
R=0.85;//responsivity in ampere per watt
Po=1;//output power in milli watt
Ip= R*Po;//photocurrent in milli ampere
disp(Ip,"photocurrent in milli ampere is ")
