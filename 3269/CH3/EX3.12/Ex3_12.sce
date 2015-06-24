// Example 3.12
clear all;
clc;

// Given data
N = 120;                                // Number of fuel rods
P = 100;                                // Reactor power in MW
t = 1;                                  // Estimation time of fuel rod after removal in days
T = 365;                                // Time of reactor operation
// Estimation
Activity_total = 1.4*10^6*P*[t^(-0.2)-(t+T)^(-0.2)];
Activity_one = Activity_total/N;        // For one fuel rod
// Result
printf('\n The activity of a fuel rod = %2.1E Ci \n',Activity_one);
