// Exa 11.7

clc;
clear all;

// Given data

C1=0.01; // micro farads
R1=470; // k Ohms
R2=5.1; // k Ohms
R3=100; // k Ohms

// Solution
// Using equation 11.15 given on page no. 324 to find Rx and Lx

Rx=R2*R3/R1; 
Lx=R2*R3*C1;

printf(' The series equivalent of the unknown impedence consist of series combination\n  of Rx = %.2f k Ohms and Lx= %.1f H \n' , Rx, Lx);
