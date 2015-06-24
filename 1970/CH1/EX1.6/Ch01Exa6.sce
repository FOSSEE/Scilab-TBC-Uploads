// Scilab code Exa1.6:  : Page 53 (2011)
clc; clear;
V = 1000;            // Potential difference, volts
R = 18.2e-02;        // Radius of the orbit, metre
B = 1000e-04;        // Magnetic field, tesla
e = 1.60218e-019;        // Charge of an electron, C
n = 1;                    // Number of the ion
v = 2*V/(R*B);            // Speed of the ion, metre per sec
M = 2*n*e*V/v^2;            // Mass of the ion, Kg
printf("\nSpeed of the ion: %6.4e m/s \nMass of the ion : %4.2f u", v, M/1.67e-027);

// Result
// Speed of the ion: 1.0989e+05 m/s 
// Mass of the ion : 15.89 u 
