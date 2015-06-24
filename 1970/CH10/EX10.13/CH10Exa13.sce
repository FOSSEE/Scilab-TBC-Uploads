// Scilab code Exa10.13 : : Page-459 (2011)
clc; clear;
h = 6.625e-34;            // Planck's constant, joule sec 
m_n = 1.67e-27;          // Mass of neutron, Kg
E = 4.906;           // Energy, joule 
w_y = 0.124;                // radiation width, eV
w_n = 0.007*E^(1/2);                // Probability of elastic emission of neutron, eV
I = 3;                    // Total angular momentum
I_c = 2;                    // Total angular momentum in the compound state
sigma = ((h^2)*(2*I_c+1)*w_y*w_n)*10^28/(2*%pi*m_n*E*1.602e-019*(2*I+1)*(w_y+w_n)^2);    // Cross section, barns
printf("\nThe cross section of neutron capture = %5.3e barns", sigma);

// Result
// The cross section of neutron capture = 3.755e+004 barns 
 
