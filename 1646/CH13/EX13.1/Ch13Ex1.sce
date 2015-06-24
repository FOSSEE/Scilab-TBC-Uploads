// Scilab Code Ex13.1: Page-648 (2011) 
clc;clear;
q = 1e-006;    // Electric charge on either side of the dipole, C
l = 2e-02;    // Dipole length, m
p = q*l;....// Dipole moment for the pair of opposite charges, C-m
E = 1e+005;....// External electric field, N/C
theta = 90;....// Angle which the dipole makes with the external field, degrees
tau = p*E*sind(theta);....// The maximum torque on dipole placed in external electric field, Nm
printf("\nThe maximum torque = %1.0e N-m", tau); 
W = integrate('p*E*sin(thet)', 'thet', 0, %pi);    // The work done in rotating the dipole direction = %1.0e J", W
printf("\nThe work done in rotating the dipole direction = %1.0e J", W);

// Result
// The maximum torque = 2e-003 N-m
// The work done in rotating the dipole direction = 4e-003 J 
