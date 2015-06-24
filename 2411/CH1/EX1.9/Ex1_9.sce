// Scilab Code Ex1.9: Page-14 (2008)
clc; clear;
omega1 = 500;    // Angular speed of rotating shaft, r.p.m.
omega2 = 0;    // Initial angular speed of the second wheel, r.p.m.
I = 1;    // For simplicity assume moment of ineria of the wheels to be unity
I1 = I, I2 = I;    // Moment of inertia of wheels A and B, kg-Sq.m
// As I1*omega1 + I2*omega2 = (I1 + I2)*omega, solving for omega
omega = (I1*omega1 + I2*omega2)/(I1 + I2);    // Angular speed of the combination of two wheels, r.p.m.
printf("\nThe angular speed of the combination of two wheels = %3.0f r.p.m.", omega);

// Result 
// The angular speed of the combination of two wheels = 250 r.p.m. 