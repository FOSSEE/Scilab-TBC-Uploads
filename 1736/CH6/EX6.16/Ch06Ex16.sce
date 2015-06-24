// Scilab Code Ex6.16: Page-205 (2006)
clc; clear;
e = 1.6e-019;   // Charge on an electron, C
mu = 1400e-04;  // Mobility of electron, metre-square per volt per sec
l = 300-06;    // Length of the n-type semiconductor, m
w = 100-06;    // Width of the n-type semiconductor, m
t = 20-06;     // Thickness of the n-type semiconductor, m
N_D = 4.5e+021; // Doping concentration of donor impurities, per metre-cube
V = 10;     // Biasing voltage for semiconductor, V
B_prep = 1; // Perpendicular magnetic field to which the semiconductor is subjected, tesla

// Part (a)
n = N_D;    // Electron concentration in semiconductor, per cc
R_H = -1/(n*e); // Hall Co-efficient, per C per metre cube

// Part (b)
rho = 1/(n*e*mu);       // Resistivity of semiconductor, ohm-m
R = rho*l/(w*t);    // Resistance of the semiconductor, ohm
I = V/R;    // Current through the semiconductor, A
V_H = R_H*I*B_prep/t;   // Hall voltage, V

// Part (c)
theta_H = atand(-mu*B_prep);    // Hall angle, degrees


printf("\nHall coefficient, R_H = %4.2e per C metre cube", R_H);
printf("\nHall voltage, V_H = %4.2f V", abs(V_H));
printf("\nHall angle, theta_H = %4.2f degree", theta_H);

// Result 
// Hall coefficient, R_H = -1.39e-003 per C metre cube
// Hall voltage, V_H = 0.45 V
// Hall angle, theta_H = -7.97 degree 

