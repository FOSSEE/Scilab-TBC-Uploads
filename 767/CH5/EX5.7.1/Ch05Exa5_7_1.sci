// Scilab code Exa5.7.1: To calculate the Compton shift : P.no. 233 (2011)
h = 6.62e-034; // Value of Planck's constant, J
m_e = 9.11e-031; // Mass of the electron,Kg
c = 3e+08; // Velocity of light, m/s
A = 65; // Angle between scattered radiation and incident radiation, degree
C_s =  h/(m_e*c)*(1-cosd(A)); // Compton shift, m
printf("\nCompton shift  : %4.2e m",C_s )
// Result
//      Compton shift  : 1.40e-012 m