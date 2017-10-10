// Example 3.19 
// Computation of total energy
// Page no 485

clc;
clear;
close;

//Given data
h=6.63*10^-34;        // Planck constant
v=5*10^14;            // Bandgap frequency of laser
N=10^24;              // Population inversion density
V=10^-5;              // Volume of laser medium

// Total energy
E=(1/2)*h*v*(N)*V;           

//Display result on command window
printf("\n Total energy (J)= %0.1f  ",E);

