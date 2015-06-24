// Example 1.2

clear; clc; close;

format('v',6);
// Given data
P=2;//No. of poles
f=50;//in Hz
S=2;//in %


//Calculations
S=S/100;//unitless
Ns=120*f/P;//in rpm
N=Ns*(1-S)
disp(N,"Speed of motor in rpm : ");
