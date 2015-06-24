// Scilab Code Ex13.9 Hall effect in Si semiconductor:  Page-442 (2010)
e = 1.602e-019;    // Charge on an elctron, C
T = 300;        // Room temperature, kelvin
R_H = -7.35e-05;    // Hall co-efficeint of Si specimen, metre cube per coulomb
sigma = 200;    // Electrical conductivity of Si, per ohm per metre
n = -1/(e*R_H);    // Electron density in the Si specimen
mu_e = sigma/(n*e);    // Electron mobility in the Si specimen, metre cube per volt per second
printf("\nThe density of electron = %3.1e metre cube", n);
printf("\nThe mobility of electron = %4.2e metre cube per volt per second", mu_e); 
// Result 
// The density of electron = 8.5e+022 metre cube
// The mobility of electron = 1.47e-002 metre cube per volt per second