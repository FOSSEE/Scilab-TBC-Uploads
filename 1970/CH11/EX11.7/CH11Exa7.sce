// Scilab code Exa11.7 : : Page-537 (2011)
clc; clear;
B = 0.4;        // Magnetic field, tesla
e = 1.6203e-19;        // Charge of an electron, C
R = 30*2.54e-02;        // Radius, metre
c = 3e+08;            // Capacitance, farad
E = B*e*R*c/1.6e-13;        // The energy of the electron, mega electron volts
f = 50;                // Frequency, cycles per sec
N = c/(4*2*%pi*f*R);        // Total number of revolutions
Avg_E_per_rev = E*1e+006/N;        // Average energy gained per revolution, electron volt
printf("\nThe energy of the electron = %4.1f MeV\nThe average energy gained per revolution = %6.2f eV", E, Avg_E_per_rev);

// Result
// The energy of the electron = 92.6 MeV
// The average energy gained per revolution = 295.57 eV 
// Note: Wrong answer is given in the textbook 
//   Average energy gained per revolution : 295.57 electron volts
