// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 5")
disp("Output Power")
Po = 12000
eta = 0.95
disp("Power generated Pin")
Pin = Po/eta
disp("Since there are two runners, power developed by each runner")
P = Pin/2 
