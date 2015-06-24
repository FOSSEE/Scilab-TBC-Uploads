// To determine critical value of dv/dt
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-6 in page 379

clear; clc; close;

// Given Data
ij2=32*10^-3; // Limiting value of the charging current in A
Cj2=40*10^-12; // Capacitance of reverse biased junction J2 in F

// Calculations
dv_dt=ij2/Cj2; 

printf("The value of dv/dt of the given SCR is %0.2e volt/second \n",dv_dt);

// Results
// The value of dv/dt of the given SCR is 800 V/mu-s