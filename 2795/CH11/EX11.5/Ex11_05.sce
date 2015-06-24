// Scilab Code Ex11.5: Page-412 (2014)
clc; clear;
A = 100*100;    // Area of solar cell, Sq.m
t = 12*60*60;    // Time for which the solar cell operates, s
phi = 680;    // Solar flux received by the solar cell, W/Sq.m
eta = 0.30    // Efficiency of the solar array
E_array = eta*phi*A*t;    // Energy produced by solar cell in one 12-hour day, J
printf("\nThe energy produced by solar cell in one 12-hour day : %3.1e J", E_array);
P = 100e+006;    // Power output of power plant, W
t = 24*60*60;    // Time for which power plant operates, s
E_plant = P*t;    // Energy produced by power plant, J
printf("\nThe energy produced by power plant in one day : %3.1e J which is about %d times more than that produced by solar cell array..!", E_plant, ceil(E_plant/E_array));

// Result
// The energy produced by solar cell in one 12-hour day : 8.8e+010 J
// The energy produced by power plant in one day : 8.6e+012 J which is about 99 times more than that produced by solar cell array..! 