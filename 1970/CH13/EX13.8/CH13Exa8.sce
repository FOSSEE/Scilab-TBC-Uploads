// Scilab code Exa13.8 : : Page-602 (2011)
clc; clear;
A_0 = 240;        // Mass number of parent nucleus
A_1 = 120;        // Mass number of daughter nucleus
B_120 = 8.5;        // Binding energy of daughter nucleus
B_240 = 7.6;        //  Binding energy of parent nucleus
Q = 2*A_1*B_120-A_0*B_240;    // Estimated Q-value, mega electron volts
printf("\nThe estimated Q-value is = %d MeV", Q);

// Result
// The estimated Q-value is = 216 MeV 

  