// Scilab code Ex2.4: Pg.47 (2005)
clc; clear;
c = 3e+08;    // Velocity of light, m/s
u = 0.85*c;    // Velocity of electron, m/s
m_p = 1.67e-27;   // Rest mass of proton, kg

// Part (a)
E_o = m_p*c^2/1.602e-019;   // Rest energy of proton, MeV
printf("\nRest energy of proton = %3d MeV", E_o/1e+06);

// Part (b)
// Since given that E = 3*E_o = (3*m_p*c^2)/sqrt(1-(u/c)^2), solving for u
u = sqrt(8/9)*c;   // Velocity of proton, m/s
printf("\nVelocity of proton = %4.2fe+08 m/s", u*1e-08);

// Part (c)
// Since K = E - m_p*(c^2) = 3*m_p*(c^2) - m_p*(c^2) = 2*m_p*(c^2)
K = 2*E_o;   // Kinetic energy of proton, MeV
printf("\nThe kinetic energy of proton = %4d MeV", K*1e-06);

// Part (d)
p = sqrt(8)*(E_o);
printf("\nThe momentum of proton = %4d MeV/c", p*1e-06);

// Result
// Rest energy of proton = 938 MeV
// Velocity of proton = 2.83e+08 m/s
// The kinetic energy of proton = 1876 MeV
// The momentum of proton = 2653 MeV/c 
