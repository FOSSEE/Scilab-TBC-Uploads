// Scilab Code Ex3.2 : Page-71 (2010)
lambda1 = 4250e-010;    // First wavelength emitted by source of light, m
lambda2 = 5050e-010;    // Second wavelength emitted by source of light, m
D = 1.5;    // Distance between the source and the screen, m
d = 0.025e-03;       // Distance between the slits, m
n = 3;    // Number of fringe from the centre
x3 = n*lambda1*D/d;    // Position of third bright fringe due to lambda1, m
x3_prime = n*lambda2*D/d;    // Position of third bright fringe due to lambda2, m
printf("\nThe separation between the third bright fringe due to the two wavelengths = %4.2f cm", (x3_prime - x3)/1e-02);

// Result 
// The separation between the third bright fringe due to the two wavelengths = 1.44 cm 