// Scilab Code Ex17.4 Dependence of London penetration depth on temperature Page-548 (2010)
N = 6.02e+023;    // Avogadro's number
rho = 13.55e+03;    // Density of mercury, kg per metre cube
M = 200.6e-03;    // Molecular mass of mercury, kg
lambda_T = 750e-010;    // Penetration depth of mercury at T kelvin, m
T_c = 4.12;    // Critical temperature of superconducting transition for Hg, kelvin
T = 3.5;    // Temperature at which penetration depth for Hg becomes lambda_T, kelvin   
lambda_0 = lambda_T*(1-(T/T_c)^4)^(1/2);    // Penetration depth of mercury at 0 kelvin, m
n_0 = N*rho/M;    // Normal electron density in mercury, per metre cube
n_s = n_0*(1-(T/T_c)^4);    // Superelectron density in mercury, per metre cube
printf("\nThe penetration depth at 0 K = %4.2e m", lambda_0);
printf("\nThe superconducting electron density = %4.2e per metre cube", n_s);

// Result 
// The penetration depth at 0 K = 5.19e-008 m
// The superconducting electron density = 1.95e+028 per metre cube 