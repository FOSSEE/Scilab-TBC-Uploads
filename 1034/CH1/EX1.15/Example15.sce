clear;
clc;
printf("\n \t Example 1.15");
// how various functions grow with n, plotting of various functions is being shown.
// like function 2^n grows very rapidly with n. and utility of programs with exponential complexity is limited to small n ( typically n<=40).
n=[ 1 2 3 4 5 6];.......// takin value of n from 1 to 10 to observe the variation in various functions.
plot(log (n));
plot(2^n);
plot(n);
plot(n^2);
xtitle("Plot of function values","n -->","f -->");
printf(" \n \n X - axis is represented by values of n and Y-axis if represented by f");
