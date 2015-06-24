// Scilab Code Ex12.19: Page-469(2014)
clc; clear;
t_half = 5730;    // The half life of uranium ore, years
R0 = 1.2e-012;    // The initial ratio of C14 to C12 at the time of death
R = 1.10e-012;    // The final ratio of C14 to C12 t years after death
// As R = R0*exp(-lambda*t), solving for t
t = -log(R/R0)*t_half/log(2);    // Age of the bone, years
printf("\nThe %3d years age of bone does not date from the Roman Empire.", ceil(t));

// Result
// The 720 years age of bone does not date from the Roman Empire. 