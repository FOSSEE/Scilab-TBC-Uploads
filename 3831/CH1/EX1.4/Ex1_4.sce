// Example 1_4
clc;funcprot(0);
// Given data
W=25000;// Weight in lbf
V=5000;// mph
g=32.174;// ft/s^2
g_orbit=2.50;// ft/s^2

// Calculation
// (a)
g_c=32.174;// ft/s^2
// (b)
m=(W*g_c)/g;// The mass in lbm
W_orbit=(m*g_orbit)/g_c;// lbf
printf("\n(a)The value of g_c in this orbit,g_c=%2.3f ft/s^2 \n(b)The weight in Earth orbit,W_orbit=%4.0f lbf",g_c,W_orbit);
