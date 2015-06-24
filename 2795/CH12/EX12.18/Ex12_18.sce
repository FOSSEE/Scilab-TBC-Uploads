// Scilab Code Ex12.18: Page-467(2014)
clc; clear;
t_half = 4.47e+009;    // The half life of uranium ore, years
R_prime = 0.60;    // The ratio of Pb206 abundance to that of U238
t = t_half/log(2)*log(R_prime + 1);    // Age of the uranuim ore, years
printf("\nThe age of U-238 ore = %3.1e years", t);

// Result
// The age of U-238 ore = 3.0e+009 years 