// Scilab code Exa6.15: : Page-246 (2011)
clc; clear;
S = string(rand(2,1))
S(1,1) = 'antiparallel spin'
S(2,1) = 'parallel spin'

for i = 1:2
    if S(i,1) == 'antiparallel spin' then
       printf("\nFor Fermi types :")
        printf("\n\n The selection rules for allowed transitions are :  \n\tdelta I is zero \n\tdelta pi is plus \nThe emited neutrino and electron have %s",S(i,1))
      elseif S(i,1) == 'parallel spin' then
        printf("\nFor Gamow-Teller types :")
        printf("\nThe selection rules for allowed transitions are : \n\tdelta I is zero,plus one and minus one\n\tdelta pi is plus\nThe emited neutrino and electron have %s",S(i,1)) 
    end
 end
// Calculation of ratio of transition probability
M_F = 1;    // Matrix for Fermi particles
g_F = 1;        // Coupling constant of fermi particles
M_GT = 5/3;        // Matrix for Gamow Teller
g_GT = 1.24;        // Coupling constant of Gamow Teller
T_prob = g_F^2*M_F/(g_GT^2*M_GT);    // Ratio of transition probability
// Calculation of Space phase factor
e = 1.6e-19;        // Charge of an electron, coulomb
c = 3e+08;            // Velocity of light, metre per sec
K = 8.99e+9;        // Coulomb constant
R_0 = 1.2e-15;        // Distance of closest approach, metre
A = 57;            // Mass number
Z = 28;            // Atomic number 
m_n = 1.6749e-27;    // Mass of neutron, Kg
m_p = 1.6726e-27;    // Mass of proton, Kg
m_e = 9.1e-31;        // Mass of electron. Kg
E_1 = 0.76;         // First excited state of nickel
delta_E = ((3*e^2*K/(5*R_0*A^(1/3))*((Z+1)^2-Z^2))-(m_n-m_p)*c^2)/1.6e-13;         // Mass difference, mega electron volts
E_0 = delta_E-(2*m_e*c^2)/1.6e-13;    // End point energy, mega electron volts
P_factor = (E_0-E_1)^5/E_0^5;    // Space phase factor 
 printf("\nThe ratio of transition probability = %4.2f\nThe space phase factor = %4.2f", T_prob, P_factor);
 
// Result
// The emited neutrino and electron have antiparallel spin
// For Gamow-Teller types :
// The selection rules for allowed transitions are : 
//	delta I is zero,plus one and minus one
//	delta pi is plus
// The emited neutrino and electron have parallel spin
// The ratio of transition probability = 0.39
// The space phase factor = 0.62 