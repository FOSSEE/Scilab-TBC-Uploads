// Scilab code Exa10.3 : : Page-455 (2011)  
clc; clear;
m_p = 1.007276;       // Atomic mass of the proton, u
m_H = 3.016049;         // Atomic mass of the tritium, u 
m_He = 3.016029;          // Atomic mass of the He ion, u 
m_n = 1.008665;            // Atomic mass of the emitted neutron, u
Q = (m_p+m_H-m_He-m_n)*931.5;         // Q-value in MeV
E_p = 3;                      // Kinetic energy of the proton, MeV 
theta = 30*3.14/180;           // angle, radian
u = sqrt(m_p*m_n*E_p)/(m_He+m_n)*cos(theta);         //
v = ((m_He*Q)+E_p*(m_He-m_p))/(m_He+m_n);                 //
E_n = (u+sqrt(u^2+v))^2;                  // Kinetic energy of the emitted neutron,MeV
printf("\nThe kinetic energy of the emitted neutron = %5.3f MeV", E_n);

// Result
// The kinetic energy of the emitted neutron = 1.445 MeV 