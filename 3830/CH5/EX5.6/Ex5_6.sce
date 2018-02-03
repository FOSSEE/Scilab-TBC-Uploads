// Exa 5.6

clc;
clear;

// Given

// A stationary Lissajous pattern
Vy = 6 ; // max value on vertical axis
Vx = 5; // max value on horizontal axis
fx = 1500; // horizontal input frequency(Hz)

// Solution

// fy/fx = No of pts the target meets per bottom(x-axis)/No of pts the target meets per bottom(y-axis)

fy = (Vy/Vx)*fx;

printf('The frequency of vertical axis = %d Hz \n',fy);
