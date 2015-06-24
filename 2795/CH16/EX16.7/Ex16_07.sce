// Scilab Code Ex16.7: Page-598(2014)
clc; clear;
c = 1;    // For simplicity assume speed of light to be unity, m/s
d = 1.6e+005;    // Distance of the supernova 1987A from the earth, ly
m = 16;    // Mass of heavier neutrino, eV/c^2;
E = 20e+006;    // Energy of the neutrino, eV
delta_t = d/(2*c)*(m/E)^2;    // Difference between the travel times of the lighter and the massive neutrinos, y
printf("\nThe difference between the travel times of the lighter and the massive neutrinos = %3.1f s", delta_t*(365.25*24*60*60));

// Result
// The difference between the travel times of the lighter and the massive neutrinos = 1.6 s 