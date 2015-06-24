// Scilab Code Ex13.7 Electrical conductivity of intrinsic and extrinsic Si:  Page-439 (2010)
NA = 6.023e+23;    // Avogadro's number
A_Si = 28.09e-03;    // Kilogram atomic mass of Si, kg
e = 1.602e-019;    // Charge on an elctron, C
n_impurity = 1/1e+08;    // Donor impurity atoms per Si atom
n_i = 1.5e+016;    // Intrinsic carrier density of Si at room temperature, per metre cube
mu_e = 0.13;    // Mobility of electrons, metre square per volt per second
mu_h = 0.05;    // Mobility of holes, metre square per volt per second
T = 300;        // Room temperature, kelvin
sigma_i = n_i*e*(mu_e + mu_h);    // Intrinsic electrical conductivity, per ohm per metre
Si_density = 2.23e+03;    // Density of silicon, kg per metre cube
N_Si = NA * Si_density/A_Si;    // Number of Si atoms, per metre cube
N_D = N_Si*n_impurity;    // Density of donor impurity, per metre cube;
sigma_ext = ceil(N_D)*e*mu_e;    // Extrinsic electrical conductivity of Si, per ohm per metre
printf("\nThe intrinsic electrical conductivity of Si = %5.3e per ohm per metre", sigma_i); 
printf("\nThe extrinsic electrical conductivity of Si = %4.1f per ohm per metre", sigma_ext); 
// Result 
// The intrinsic electrical conductivity of Si = 4.325e-004 per ohm per metre
// The extrinsic electrical conductivity of Si = 10.0 per ohm per metre 