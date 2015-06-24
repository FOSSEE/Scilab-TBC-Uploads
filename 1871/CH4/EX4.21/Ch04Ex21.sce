// Scilab code Ex4.21 : Pg:159 (2008)
clc;clear;
D = 50;    // The distance between the slits and the screen, cm
d = 0.1/2;    // Half the separation between two slits, cm
mu = 1.58;    // The refractive index of mica sheet
x0 = 0.2;    // The shift of interference pattern, cm
// As x0 = D/(2*d)*(mu - 1)*t, solving for t
t = 2*d*x0/(D*(mu-1));    // Thickness of mica sheet, cm
printf("\nThe thickness of mica sheet = %3.1e cm", t);

// Result 
// The thickness of mica sheet = 6.9e-004 cm 