// Scilab Code Ex6.7 Diffusion coefficent of Cu in Al: Page 206 (2010)
D0 = 0.25e-04;    // Pre-exponential diffusion constant independent of temperature, metre square per second
T = 550+273;    // Absolute temperature of the system, kelvin
R = 8.314;    // Molar gas constant, J/mol/K
Q = 121e+03;    // The activation energy for diffusion, joule per mole
t = 1*60*60;    // Time taken by Cu to diffuse into Al, sec
D = D0*exp(-Q/(R*T));    // Diffusion coefficient of Cu in Al at 550 degree celsius, metre square per sec 
x = sqrt(D*t);    // Diffusion length of Cu in Al, m
printf("\nThe diffusion coefficient of Cu in Al at 550 degree celsius = %4.2e metre square per sec", D);
printf("\nThe diffusion length of Cu in Al = %5.3f mm", x*1000);    
// Result
// The diffusion coefficient of Cu in Al at 550 degree celsius = 5.22e-013 metre square per sec
// The diffusion length of Cu in Al = 0.043 mm 