clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.13
// Page 236
printf("Example 5.13, Page 236 \n \n");

// solution

// basis  1 kmol equimolar mix
npent = .5 // kmol
nhex = .5 // kmol
P = 101.325  // kPa
x1 = .5
x2 = x1
Ts1 = 309.2 // K
Ts2 = 341.9 // K
T1 = (Ts1+Ts2)/2
// using these data, we get table 5.10 and 5.11
Tbb = 321.6  //K
Tdp = 329.9  //K
printf(" Bubble point = "+string(Tbb)+" K and \n Dew point = "+string(Tdp)+" K.")
