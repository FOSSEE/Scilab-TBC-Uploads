// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 10")
//Given conditions
//r1 = 0.14m
//Cw1 = 340m/s
//r2 = 0.07m
//Cw2 = 50m/s
//Torque = r1*Cw1 - r2*Cw2
disp("Torque in Nm kg/s implies => ")
T = 0.14*340-0.07*50
