// Scilab code Ex14.3 : Pg:719(2011)
clc;clear;
e = 1.6e-019;   // Charge on an electron, C
mu_e = 0.13;    // Mobility of an electron, metre square/V-s
mu_h = 0.05;    // Mobility of a hole, metre square/V-s
n_i = 1.5e+016; // Intrinsic concentration of Si, per metre cube
// Pure Si
sigma = e*n_i*(mu_h+mu_e);  // Electrical conductivity of Si, mho per metre
// Pure Si doped with donor impurity
n_e = 5e+028/1e+09;     // Concentration of electrons, per metre cube
sigma_n = e*n_e*mu_e;   // Electrical conductivity of Si doped with donor impurity, mho per metre
// Pure Si doped with acceptor impurity
n_h = 5e+028/1e+09;     // Concentration of holes, per metre cube
sigma_p = e*n_h*mu_h;   // Electrical conductivity of Si doped with acceptor impurity, mho per metre
printf("\nThe electrical conductivity of pure Si = %4.2e mho/m", sigma); 
printf("\nThe electrical conductivity of Si doped with donor impurity = %4.2f mho/m", sigma_n);
printf("\nThe electrical conductivity of Si doped with acceptor impurity= %4.2f mho/m", sigma_p);

// Result
// The electrical conductivity of pure Si = 4.32e-04 mho/m
// The electrical conductivity of Si doped with donor impurity = 1.04 mho/m
// The electrical conductivity of Si doped with acceptor impurity= 0.40 mho/m 
