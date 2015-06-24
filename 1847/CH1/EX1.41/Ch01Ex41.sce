// Scilab Code Ex1.41:: Page-1.58 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m0 = 9.1e-031;   // Electronic mass, kg
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
phi = 90;     // Scattering angle of X-rays, degrees
E = 510*1e+03*e;    // Energy of incident photon, J
// As E = h*c/lambda, solving for lambda
lambda = h*c/E;    // Wavelength of incident photon, m
// As from Compton shift formula
// lambda_prime - lambda = h/(m0*c)*(1-cosd(phi)), solving for lambda_prime
lambda_prime = lambda + h/(m0*c)*(1-cosd(phi));  // Wavelength of scattered X-ray, m  
printf("\nThe wavelength of scattered X-ray as viewed at %d degrees = %4.2e m", phi, lambda_prime);

// Recoil energy of electron
E = h*c*(1/lambda - 1/lambda_prime);    // Recoil energy of electron, joule
printf("\nThe recoil energy of electron scattered through %d degrees = %4.2e eV", phi, E/e);

// Direction of recoil electron
theta = atand(lambda*sind(phi)/(lambda_prime-lambda*cosd(phi)));  // Direction of recoil electron, degrees
printf("\nThe direction of emission of recoil electron = %5.2f degrees", theta);
      

// Result 
// The wavelength of scattered X-ray as viewed at 90 degrees = 4.84e-12 m
// The recoil energy of electron scattered through 90 degrees = 2.55e+05 eV
// The direction of emission of recoil electron = 26.61 degrees 
