// Scilab code Ex3.6: Pg.131-132 (2008)
clc; clear;
r = 1e-10;    // Radius of Potassium atom, m
i = 1e-02;    // Intensity of light, W/m^2
phi = 2.22;    // Work function of potassium, eV
e = 1.60e-19;    // Conversion factor
t = phi*e/(i*%pi*r^2);    // Time lag for the emmision of photoelectron,  s
printf("\nThe time lag for the emmision of photoelectrons = %4.2e sec or %4.1f min", t, t/60);

// Result
// The time lag for the emmision of photoelectrons = 1.13e+003 sec or 18.8 min 