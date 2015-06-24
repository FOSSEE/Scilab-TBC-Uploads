// Scilab Code Ex17.1: Thickness of vibrating quartz at resonance : Page-352 (2010)
f = 3e+006;    // Fundamental vibrational frequency of quartz crystal, MHz
Y = 7.9e+010;    // Young's modulus of quartz, newton per metre
rho = 2650;    // Density of quartz, kg per metre cube
// We have for resonant frequency
// f = 1/(2*l)*sqrt(Y/rho), solving for l
l = 1/(2*f)*sqrt(Y/rho);    // Thickness of vibrating quartz at resonance, m
printf("\nThe thickness of vibrating quartz at resonance = %3.1f mm", l/1e-003);

// Result
// The thickness of vibrating quartz at resonance = 0.9 mm