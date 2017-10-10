// SAMPLE PROBLEM 8/7
clc;funcprot(0);
// Given data
rbar=0.9;// m
k_o=0.95;// The radius of gyration in m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
tau=2*%pi*sqrt(k_o^2/(g*rbar));// The period for small oscillations about the pivot in s
printf("\nThe period for small oscillations about the pivot,tau=%1.2f s",tau);
