// Scilab Code Ex12.11: Page-452 (2014)
clc; clear;
T = 110;    // Half life of F-18, min
f_remain = 0.01;    // Fraction of the F-18 sample remained
t = -log(0.01)/(log(2)*60)*T;    // Time taken by the F-18 sample to decay to 1 percent of its initial value, h
printf("\nThe time taken for 99 percent of the F-18 sample to decay = %4.1f h", t);

// Result
// The time taken for 99 percent of the F-18 sample to decay = 12.2 h 