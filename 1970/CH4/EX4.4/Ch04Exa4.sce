// Scilab code Exa4.4 : : Page 178 (2011)
clc; clear;
V = 1000;    // Operating voltage of Counter, volt 
x = 1e-004;        // Time taken, sec
b = 2;            // Radius of the cathode, cm
a = 0.01;        // Diameter of the wire, cm
E_r = V/(x*log(b/a)); // Radial electric field, V/m
C = 1e+009;              // Total counts in the GM counter
T = C/(50*60*60*2000); // Life of the G.M. Counter, year
printf("\nThe radial electric field: %4.2eV/m\nThe life of the G.M. Counter : %5.3f years", E_r, T);

// Result
// The radial electric field: 1.89e+006V/m
// The life of the G.M. Counter : 2.778 years 