// Scilab Code Ex13.2:Page-648 (2011)
clc;clear;
Q = 8e-019;....// Charge of the nucleus, C
p = 3.2e-029;....// Electric dipole moment, C-m
r = 1e-10;    // Distance of dipole relative to the nucleus, m
k = 9e+9;....// Coulomb constant, N-meter-square/C-square
theta = 0;....// Angle for radial direction, radian 
F = k*p*Q*sqrt(3*cos(theta^2)+1)/r^3;    // The force acting on the dipole in the radial direction, N
printf("\nThe force acting on the dipole in the radial direction = %3.1e N", F);
theta = %pi/2;....// Angle for perpendicular direction, radian
F = k*p*Q*sqrt(3*cos(theta)^2+1)/r^3;
printf("\nThe force acting on the dipole in the direction perpendicular to radial direction = %3.1e N", F); 

// Result
// The force acting on the dipole in the radial direction = 4.6e-007 N
// The force acting on the dipole in the direction perpendicular to radial direction = 2.3e-007 N 
