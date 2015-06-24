// Scilab Code Ex3.13: Page-93 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/K
h = 6.626e-034; // Planck's constant, Js
A = cell(4,5);  // Declare a matrix of 4X5
A(1,1).entries = 300;
A(1,2).entries = 0.878e+010;
A(1,3).entries = 0.483e+010;
A(1,4).entries = 0.448e+010;
A(2,1).entries = 200;
A(2,2).entries = 0.968e+010;
A(2,3).entries = 0.508e+010;
A(2,4).entries = 0.512e+010;
A(3,1).entries = 100;
A(3,2).entries = 1.050e+010;
A(3,3).entries = 0.540e+010;
A(3,4).entries = 0.579e+010;
A(4,1).entries = 20;
A(4,2).entries = 1.101e+010;
A(4,3).entries = 0.551e+010;
A(4,4).entries = 0.624e+010;
s = 2;      // Number of atoms in a unit cell
a = 4.225e-10;  // Lattice parameter of Na, m
rho = 0.971e+03;    // Density of Na, kg/metre-cube
Va = a^3;   // Volume of unit cell, metre cube
printf("\n________________________________________");
printf("\nT       C11     C12     C44     thetaD")
printf("\n________________________________________");
for i=1:1:4
   A(i,5).entries = (3.15/(8*%pi)*(h/k)^3*s/(rho^(3/2)*Va)*(A(i,2).entries-A(i,3).entries)^(1/2)*(A(i,2).entries+A(i,3).entries+2*A(i,4).entries)^(1/2)*A(i,4).entries^(1/2))^(1/3);
printf("\n%3d     %5.3f   %5.3f   %5.3f   %3d", A(i,1).entries, A(i,2).entries/1e+10, A(i,3).entries/1e+10, A(i,4).entries/1e+10, A(i,5).entries);
end
printf("\n________________________________________");

// Result 
// ________________________________________
// T       C11     C12     C44     thetaD
// ________________________________________
// 300     0.878   0.483   0.448   197
// 200     0.968   0.508   0.512   210
// 100     1.050   0.540   0.579   222
//  20     1.101   0.551   0.624   229
// ________________________________________ 
// The theta values given in the textbook are wrong
