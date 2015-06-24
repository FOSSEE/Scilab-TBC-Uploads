// Example 3.11

clear; clc; close;

format('v',6);
// Given data
Beta=1.8;//in dcegree
revolution=10;//no. of revolution
//Calculations
resolution=360/Beta;//in  steps/rev
steps=resolution*revolution;//no. of steps in 10 evolution
disp("No. of steps = "+string(steps)+" should be encoded.");
