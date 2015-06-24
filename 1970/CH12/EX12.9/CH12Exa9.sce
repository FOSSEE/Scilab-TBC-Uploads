// Scilab code Exa12.9 : : Page-575 (2011)
clc; clear;
E_0 = 2e+06;        // Average energy of the neutron, electron volts
E = 0.025;            // Thermal energy of the neutron, electron volts
// For graphite
A = 12            // Mass number
sigma_g = 33.5;    // The value of sigma for graphite
tau_0 = 1/(6*sigma_g^2)*(A+2/3)/(1-2/(3*A))*log(E_0/E);    // Age of neutron for graphite, Sq.m
L_f = sqrt(tau_0);    // Slowing down length of neutron through graphite, m
printf("\nFor Graphite, A = %d", A);
printf("\nNeutron age = %d Sq.cm", tau_0*1e+004);
printf("\nSlowing down length = %5.3f m", L_f);
// For beryllium
A = 9            // Mass number
sigma_b = 57;    // The value of sigma for beryllium
tau_0 = 1/(6*sigma_b^2)*(A+2/3)/(1-2/(3*A))*log(E_0/E);    // Age of neutron for beryllium, Sq.m
L_f = sqrt(tau_0);    // Slowing down length of neutron through graphite, m
printf("\n\nFor Beryllium, A = %d", A);
printf("\nNeutron age = %d Sq.cm", tau_0*1e+004);
printf("\nSlowing down length = %3.1e m", L_f);

// Result
// For Graphite, A = 12
// Neutron age = 362 Sq.cm
// Slowing down length = 0.190 m

// For Beryllium, A = 9
// Neutron age = 97 Sq.cm
// Slowing down length = 9.9e-002 m 