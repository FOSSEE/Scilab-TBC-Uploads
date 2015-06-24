// Scilab Code Ex3.12: Page-93 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/K
h = 6.626e-034; // Planck's constant, Js
A = cell(2,8);  // Declare a matrix of 2X8
A(1,1).entries = 'Cu';
A(1,2).entries = 1.684e+012;
A(1,3).entries = 1.214e+012;
A(1,4).entries = 0.754e+012;
A(1,5).entries = 4;
A(1,6).entries = 3.61e-08;
A(1,7).entries = 8.96;
A(2,1).entries = 'Na';
A(2,2).entries = 0.055e+012;
A(2,3).entries = 0.047e+012;
A(2,4).entries = 0.049e+012;
A(2,5).entries = 2;
A(2,6).entries = 4.225e-08;
A(2,7).entries = 0.971;

// For Cu
Va = A(1,6).entries^3;   // Volume of unit cell, cm cube
A(1,8).entries = (3.15/(8*%pi)*(h/k)^3*A(1,5).entries/(A(1,7).entries^(3/2)*Va)*(A(1,2).entries-A(1,3).entries)^(1/2)*(A(1,2).entries+A(1,3).entries+2*A(1,4).entries)^(1/2)*A(1,4).entries^(1/2))^(1/3);

// For Na
Va = A(2,6).entries^3;   // Volume of unit cell, cm cube
A(2,8).entries = (3.15/(8*%pi)*(h/k)^3*A(2,5).entries/(A(2,7).entries^(3/2)*Va)*(A(2,2).entries-A(2,3).entries)^(1/2)*(A(2,2).entries+A(2,3).entries+2*A(2,4).entries)^(1/2)*A(2,4).entries^(1/2))^(1/3);

printf("\n________________________________________");
printf("\nMetal     C11     C12     C44     thetaD")
printf("\n________________________________________");
for i = 1:1:2
    printf("\n%s        %5.3f   %5.3f   %5.3f   %3d", A(i,1).entries, A(i,2).entries/1e+12, A(i,3).entries/1e+12, A(i,4).entries/1e+12, A(i,8).entries);
end
printf("\n________________________________________");

// Result 
// ________________________________________
// Metal     C11     C12     C44     thetaD
// ________________________________________
// Cu        1.684   1.214   0.754   380
// Na        0.055   0.047   0.049   150
// ________________________________________
