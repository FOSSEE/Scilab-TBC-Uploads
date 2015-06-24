// Estimation of smallest k-vector along x-direction
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-6 in page 21

clear; clc; close;

// Data given
x=1; // x-coordiante
y=1; // y-coordinate
z=1; // z-coordinate
E=0.3*1.6*10^-19; // Energy separation in eV
m_c=0.067*0.91*10^-30; // Effective mass of conduction electron in kg
h=1.05*10^-34; // Constant of calculation in Js

// Calculation
k_x=(2*m_c*E)/(3*h^2);
A=sqrt(k_x);

printf("K vector along (111) direction is %0.1e m^-1",A);

// Result
//Value of k-vector along (111) direction is 4.2*10^8 m^-1
//Parabolic expression has been used to compute the k-vector