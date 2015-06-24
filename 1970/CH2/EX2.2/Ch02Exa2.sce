// Scilab code Exa2.2 : : Page 88 (2011)
clc; clear;
T_h = 14.8; // Half life of Na-24, hours
Q = 1e+008; // Production rate of Na-24, per sec
L = 0.693/T_h; // Decay constant, per sec
t = 2; // Time after the bombardment, hours
A = Q/3.7e+010*1000; // The maximum activity of Na-24, mCi
T = -1*log(0.1)/L; // The time needed to produced 90% of the maximum activity, hour
N = 0.9*Q*3600/L*%e^(-L*t); // Number of atoms of Na-24 left two hours after bombardment was stopped
printf("\nThe maximum activity of Na-24 = %3.1f mCi\nThe time needed to produced 90 percent of the maximum activity = %4.1f hrs \nNumber of atoms of Na-24 left two hours after bombardment was stopped = %4.2e ", A, T, N);

// Result
// The maximum activity of Na-24 = 2.7 mCi
// The time needed to produced 90 percent of the maximum activity = 49.2 hrs 
// Number of atoms of Na-24 left two hours after bombardment was stopped = 6.30e+012  