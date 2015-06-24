// Example 5-12
// Constructing Routh array in scilab 

clear; clc;
xdel(winsid());  //close all windows
mode(0);

s = %s;
H = s^4 + 2*s^3 + 3*s^2 + 4*s + 5;
routh_t(H)      // display the routh table

