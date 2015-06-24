// Scilab Code Ex13.8 Resistance of intrinsic Ge Rod:  Page-440 (2010)
e = 1.602e-019;    // Charge on an elctron, C
T = 300;        // Room temperature, kelvin
l = 1e-02;    // Length of the Ge rod, m
b = 1e-03;    // Width of the Ge rod, m
t = 1e-03;    // Thickness of the Ge rod, m
n_i = 2.5e+019;    // Intrinsic carrier density of Ge, per metre cube
mu_e = 0.39;    // Mobility of electrons, metre square per volt per second
mu_h = 0.19;    // Mobility of holes, metre square per volt per second
sigma_i = n_i*e*(mu_e + mu_h);    // Intrinsic electrical conductivity, per ohm per metre
A = b*t;    // Surface area of the Ge rod, metre square
rho = 1/sigma_i;    // Electrical resistivity of Ge Rod, ohm-metre
R = rho*l/A;    // Resistance of Ge Rod, ohm
printf("\nThe resistance of Ge Rod = %3.1e ohm", R); 
// Result 
// The resistance of Ge Rod = 4.3e+003 ohm 