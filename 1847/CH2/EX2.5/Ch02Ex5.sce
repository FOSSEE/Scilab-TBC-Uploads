// Scilab Code Ex2.5:: Page-2.10 (2009)
clc; clear;
lambda1 = 5890e-008;    // Wavelength of D1 line of sodium, cm
lambda2 = 5896e-008;    // Wavelength of D2 line of sodium, cm
D = 120;    // Distance between source and the screen, cm
d = 0.025;  // Separation between the slits, cm
n = 4;  // Order of dark fringe
x1 = (2*n+1)*lambda1*D/(2*d);   // Position of 4th dark fringe due to D1 line, cm
x2 = (2*n+1)*lambda2*D/(2*d);   // Position of 4th dark fringe due to D2 line, cm
delta_x = x2-x1;    // Fringe separation, cm

printf("\nThe separation between fourth order dark fringes = %4.2e cm", x2-x1);

// Result
// The separation between fourth order dark fringes = 1.30e-03 cm 
