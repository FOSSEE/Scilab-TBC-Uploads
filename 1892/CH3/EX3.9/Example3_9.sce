// Example 3.9

clear; clc; close;

format('v',6);
// Given data
Speed=2400;//in rpm
Resolution=200;//steps/res

//Calculations
n=Speed/60;//in rps
Beta=360/Resolution;//in degree
//Formula : n=Beta*f/360;
f=n*360/Beta;//in pps
disp(f,"Required pulse rate in pps : ");
