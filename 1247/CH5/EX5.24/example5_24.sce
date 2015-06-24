clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.24
// Page 256
printf("Example 5.24, Page 256 \n \n");

// solution

// fi1 = integr (from 304.15 to 313.15) {11831.6+24997.4*10T^-3-5979.8*10^-6T^2-31.7*10^-9T3}dt
fi1 = 170787.7 // kJ/h
fi2 = 535.4*12086 - [344.36*8743.2+168.97*18036+22.07*15892]  // kJ/h
printf(" (a) \n \n Refrigiration requirement = "+string(fi1)+" kJ/h \n \n \n (b) \n \n Refrigiration requirement based on real enthalpies = "+string(fi2)+" kJ/h.")
