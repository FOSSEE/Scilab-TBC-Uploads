// Scilab Code Ex6.7: Page-197 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Electronic charge, C
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T = 30;    // Given temperature, K
n = 1e+22;    // Carrier density of CdS, per metre cube
mu = 1e-02;     // Mobility of electron, metre-square/V-s
sigma = e*mu*n;    // Conductivity of CdS, mho per m
printf("\nThe conductivity of CdS sample = %2d mho per m", ceil(sigma));
m_eff = 0.1*m;  // Effective mass of the charge carries, kg
t = m_eff*sigma/(n*e^2);  // Average time between successive collisions, s
printf("\nThe average time between successive collisions = %4.2e sec", t);
// We have 1/2*m_eff*v^2 = 3/2*k*T, solving for v
v = sqrt(3*k*T/m_eff);    // Velocity of charrge carriers, m/s
l = v*t;    // Mean free distance travelled by the carrier, m
printf("\nThe mean free distance travelled by the carrier = %4.2e m", l);

// Result 
// The conductivity of CdS sample = 16 mho per m
// The average time between successive collisions = 5.69e-015 sec
// The mean free distance travelled by the carrier = 6.64e-010 m 
