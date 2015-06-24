// Example 7.2
clear all;
clc;

// Given data
k_inf = 1.001;                      // Infinite multiplication factor
// From the Example 7.1
l_p = 1e-4;                         // Prompt neutron lifetime
// Calculation
T = l_p/(k_inf-1);
// Result
printf(" \n The response time of the reactor = %2.1f sec \n",T);
printf(" \n The reactor power will increase as exp(t/%2.1f), where ''t'' denotes the time in seconds \n",T);
