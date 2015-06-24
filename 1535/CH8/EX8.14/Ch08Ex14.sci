// Scilab Code Ex8.14: Page-176 (2010)
c = 3e+008;    // Speed of light in vacuum, m/s
m = 50000;    // Mass of high speed probe, kg
u = 0.8*c;    // Speed of the probe, m/s
p = m*u/sqrt(1-(u/c)^2);    // Momentum of the probe, kg-m/s
printf("\nThe momentum of the high speed probe = %1g kg-m/s", p);

// Result
// The momentum of the high speed probe = 2e+013 kg-m/s 