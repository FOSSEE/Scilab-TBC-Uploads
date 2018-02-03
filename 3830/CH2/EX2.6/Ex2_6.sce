// Exa 2.6

clc;
clear;

// Given

// An Amilifier under consideration
Av = 40; // Voltage gain
Vi = 0.1; // Input voltage without feedback(V)
Vi_fb = 2.4; // Input voltage with feedback(V)

// Solution

A = Av*Vi_fb/Vi;

// Av = A/(1-B*A) ; therefore,
B = (1-A/Av)/A;

printf(' The value of feedback ratio = %.6f \n ',B);
