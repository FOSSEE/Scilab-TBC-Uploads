// Scilab Code Ex13.6 Electrical resistivity of Ge:  Page-439 (2010)
e = 1.602e-019;    // Charge on an elctron, C
n_i = 2.37e+019;    // Intrinsic carrier density of Ge at room temperature, per metre cube
mu_e = 0.38;    // Mobility of electrons, metre square per volt per second
mu_h = 0.18;    // Mobility of holes, metre square per volt per second
T = 300;    // Room temperature, kelvin
sigma_i = n_i*e*(mu_e + mu_h);    // Intrinsic electrical conductivity, per ohm per metre
rho_i = 1/sigma_i;    // Intrinsic electrical resistivity, ohm-metre
printf("\nThe intrinsic electrical resistivity = %4.2f ohm-metre", rho_i); 
// Result 
// The intrinsic electrical resistivity = 0.47 ohm-metre