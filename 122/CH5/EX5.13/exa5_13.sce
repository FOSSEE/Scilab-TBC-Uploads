// Example 5-13
// Constructing Routh array in scilab
 
clear; clc;
xdel(winsid());  //close all windows
mode(0);

s = %s;
H = s^5 + 2*s^4 + 24*s^3 + 48*s^2 - 25*s - 50;
routh_t(H)

// In this example a zero row forms at s^3
// the function atutomatically computes the derivative of the 
// auxilliary polynomial 2s^4 + 48s^2 - 50 
// viz = 8*s^3 + 96s^2 