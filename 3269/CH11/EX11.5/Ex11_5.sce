// Example 11.5
clear all;
clc;

// Given data
A = 1.23;                                   // Amount of radioactivity release due to I-131 in curie in one year
h = 30;                                     // Location of radioactivity release through vent in meter
v_bar = 1.2;                                // Wind speed in m/sec
T_12 = 8.04;                                // Half life of Iodine 131 in days
T_12b = 138;                                // Biological half life of Iodine 131 in days
zeta = 0.23;                                // Fraction of core inventory in MeV 
q = 0.23;                                   // Fraction of Iodine-131 in thyroid
M = 20;                                     // Mass of an adult thyroid in grams

// 1.
t = 365*24*3600;                            // Time in seconds
Q_dash = A/t;                               // Average emission rate of Iodine-131
// Converting days into seconds by using 1 day = 86400 seconds
lambda = 0.693/(T_12*86400);                // Decay constant of Iodine-131
lambda_b = 0.693/(T_12b*86400);             // Biological decay constant of Iodine-131
// Let the quantity chi*v_bar/Q_bar = x
// Using the plot given in Figure 11.13 for Type E condition at 2000 m
x = 6*10^(-5);
// Solving for chi
chi = (x*Q_dash)/v_bar;
// As per the standards of International Commission on Radiolgical Protection (ICRP) 
B = 2.32*10^(-4);                           // Normal breathing rate in m^3/sec
// Calculation
H_dot = (592*B*zeta*q*chi)/(M*(lambda+lambda_b));
// Result
printf(" \n The equilibrium dose rate to an adult thyroid = %.2E rem/sec \n",H_dot);

// 2.
// Calculation
H = H_dot*t;
// Expressing the result in milli-rem
// Result
printf(" \n The annual dose to an adult thyroid = %.2f mrem \n",H*10^3);
