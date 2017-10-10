// Example 1_3
clc;funcprot(0);
// Given data
g_c=32.174;//  ft/s^2
F=1;// lbf
m=1;// lbm

// Solution
onechunk=1;// (lbf.s^2)/lbm
// In the Engineering English units system, 1 lbf accelerates 1 lbm at a rate of
a=(F*g_c)/m;// ft/s^2
onechunk=32.174;// ft/s^2
onechunk=32.174/3.281;// m
printf("\n 1 chunk=%1.3f m",onechunk);
