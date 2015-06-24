// Scilab Code Ex4.6 : Page-93 (2010)
n = 1;    // Order of diffraction spectrum
N = 6000e+02;    // Number of lines per m on diffraction grating, per m
D = 2;    // Distance of screen from the source, m
lambda1 = 400e-009;    // Wavelength of blue light, m
// We have sin(theta1) = n*N*lambda, solving for theta1
theta1 = asind(n*N*lambda1);    // Angle at first order diffraction for Blue light, degrees
lambda2 = 750e-009;    // Wavelength of blue light, m
// We have sin(theta2) = n*N*lambda, solving for theta2
theta2 = asind(n*N*lambda2);    // Angle at first order diffraction for Red light, degrees
x1 = D*tand(theta1);    // Half width position at central maximum for blue color, m
x2 = D*tand(theta2);    // Half width position at central maximum for red color, m

printf("\nThe width of first order spectrum on the screen = %4.1f cm", (x2 - x1)/1e-02);

// Result 
// The width of first order spectrum on the screen = 51.3 cm 