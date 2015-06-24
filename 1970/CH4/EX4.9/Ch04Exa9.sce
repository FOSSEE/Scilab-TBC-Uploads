// Scilab code Exa4.9 : : Page-180 (2011)
clc; clear;
N_A = 1000;        // Number of count observed for radiation A
N_B = 2000;        // Number of count observed for radiation B
r = N_A/N_B;        // Ratio of count A to the count B
E_r = sqrt(1/N_A+1/N_B);        // Statistical error 
printf("\nThe statistical error of the measured ratio = %4.2f", E_r*r);

// Result
// The statistical error of the measured ratio = 0.02 (Wrong answer in the textbook)