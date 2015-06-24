// Scilab code Exa11.9 : : Page-538 (2011)
clc; clear;
q = 1.6023e-19;        // Charge of an electron, C
B_0 = 1.5;            // Magnetic field at the centre, tesla
m_d = 2.014102*1.66e-27;        // Mass of the deutron, Kg
f_max = B_0*q/(2*%pi*m_d*10^6);        // Maximum frequency of the dee voltage, mega cycles per sec
B_prime = 1.4310;        // Magnetic field at the periphery of the dee, tesla
f_prime = 10^7;            // Frequency, cycles per sec
c = 3e+08;            // Velocity of the light, metre per sec
M = B_prime*q/(2*%pi*f_prime*1.66e-27);        // Relativistic mass, u
K_E = (M-m_d/1.66e-27)*931.5;        // Kinetic energy of the particle, mega electron volts
 printf("\nThe maximum frequency of the dee voltage = %5.2f MHz\nThe kinetic energy of the deuteron = %5.1f MeV", f_max, K_E);
 
// Result
// The maximum frequency of the dee voltage = 11.44 MHz
// The kinetic energy of the deuteron = 171.6 MeV 
