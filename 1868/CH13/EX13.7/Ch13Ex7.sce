// Scilab code Ex13.7: Pg 484 (2005)
clc; clear;
R0 = 5; // Activity of I-131 isotope at the time of shipment, mCi
R = 4.2;    // Activity of I-131 isotope at the time of receipt by the medical laboratory, mCi
T_half = 8.04;    // Half life of radioactive nucleus I-131, days
lambda = 0.693/T_half;  // Decay constant of C-11, per second
// As log(R/R0) = -lambda*t, solving for t
t = -1/lambda*log(R/R0);    // Time that has elapsed between two measurements, days
printf("\nThe time that has elapsed between two measurements = %4.2f days", t);

// Result
// The time that has elapsed between two measurements = 2.02 days  
