// Exa 1.32

clc;
clear;

// Given

E = 1.2 * 10^4 ; // Phosphor Young's Modulus (kg per mm^2)
l = 400; // Length of strip (mm)
w = 0.5; // Width of strip (mm)
t = 0.08; // Thickness of strip (mm)
Theta = 90; // In degrees


// Solution

T = (E*w*t^2)/(12*l);

printf('By using the torque formula having E as youngs modulus, we get T = %.3f kg-mm \n',T);

//The answer provided in the textbook is wrong
