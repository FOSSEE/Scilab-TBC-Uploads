// Example 6.5
clear all;
clc;

// Given data
R = 100;                        // Radius of a spherical reactor in cm
P = 10^5;                      // Power of the reactor in watt

// 1.
// Calculation
B = sqrt((%pi/R)^2);
// Result
printf(" \n Buckling = %3.2E \n",B);

// 2.
// Using the data from Tables 3.2, 5.2, 5.3 and 6.3
L_TM2 = 3500;                  // Diffusion area of moderator (Sodium) in cm^2
n_T = 2.065;                   // Average number of fission neutrons emitted per neutron absorbed
t_TM = 368;                   // Diffusion time of moderator (Sodium) in cm^2
// 1 barn = 10^(-24) cm^2
sigma_aM = 0.0034*10^(-24);   // Microscopic absorption cross section of Sodium in cm^2
sigma_aF = 681*10^(-24);      // Microscopic absorption cross section of Uranium-235 in cm^2
g_a = 0.978;                  // Non 1/v factor
M_F = 235;                    // Molecular weight of Uranium-235
M_M = 12;                     // Molecular weight of Carbon-12
Z = (1+B^2*(L_TM2+t_TM))/(n_T-1-(B^2*t_TM)); // An intermediate factor 
// Calculation 
rho_M = 1.6;                  // Density of Graphite in g/cm^3
m_M = (4/3*%pi*R^3)*rho_M;    // Mass of moderator
// Calculation 
m_F = ((Z*sigma_aM*M_F)/(g_a*sigma_aF*M_M))*m_M/1000;
// Result
printf("\n Critical mass = %2.1f kg \n",m_F);

// 3.
f = Z/(Z+1);                    // Thermal utilization factor
// Calculation 
k_inf = n_T*f;
// Result
printf('\n Infinite Multiplication factor (k_inf) = %.2f \n',k_inf);

// 4.
// Calculation 
L_T2 = (1-f)*L_TM2
// Result
printf("\n Thermal Diffusion area = %d cm^2 \n",L_T2);

// 5.
E_R = 3.2*10^(-11);           // Energy per fission reaction in joules/second
N_A = 6.02*10^(23);           // Avogadro number (constant)
V = (4/3*%pi*R^3);            // Volume of the spherical reactor in cm^3
// Using the data from Tables 3.2
g_fF = 0.976;                 // Non 1/v factor Uranium-235 fuel
// Using the data from Tables II.2 for Uranium-235
sigma_f = 582*10^(-24);       // Microscopic fission cross section for Uranium-235 in cm^2
// Macroscopic fission cross section is calculated as follows
SIGMA_f = m_F*N_A*0.886*g_fF*sigma_f*1000/(V*M_F);

// From Table 6.2, the constant A can be calculated as
A = P/(4*(R^2)*E_R*SIGMA_f);

// The expression for thermal flux is
printf(" \n The expression for thermal flux = %4.3E sin (Br)/r \n",A);
// The maximum value of thermal flux is given at distance equal to zero
phi_T0 = A*B;
// Result
printf(" The maximum thermal flux = %4.3E neutrons/cm^2-sec \n",phi_T0);
// There is a slight variation in the values of diffusion area and constant A as compared from the textbook. This is due to approximation of values in textbook.

