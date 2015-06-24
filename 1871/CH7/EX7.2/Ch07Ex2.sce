// Scilab code Ex7.2: Pg:275 (2008)
clc;clear;
M_H = 1e-03;    // Mass of hydrogen, kg
M_He = 0.993e-03;    // Mass of helium, kg
delta_m = M_H-M_He;    // Mass defect, amu
c = 3e+08;    // Velocity of light, m/s
E = delta_m*c^2;    // Energy released, joules
EL = (5/100)*E/36e+05;    // Electrical energy, kilowatt hour
printf("\nThe energy released in joule in a thermonuclear reaction = %4.1e joule", E);
printf("\nThe electrical energy in kilowatt hours in a thermonuclear reaction = %4.2e kilowatt hour", EL);

// Result 
// The energy released in joule in a thermonuclear reaction = 6.3e+011 joule
// The electrical energy in kilowatt hours in a thermonuclear reaction = 8.75e+003 kilowatt hour