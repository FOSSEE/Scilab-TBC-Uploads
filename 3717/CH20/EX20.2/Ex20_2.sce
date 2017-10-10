// Ex20_2 Page:391 (2014)
clc;clear;
q = 1.6e-019;    // Charge on an electron, C
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
m = 1.67e-027;    // Mass of a proton, kg
B = 2;    // Applied magnetic field, T
R = 0.25;    // Maximum radius of cyclotron, m
f = q*B/(2*%pi*m);    // Frequency needed for applying alternating voltage, Hz
K = (q*B*R)^2/(2*m);    // Kinetic energy of protons when they leave the cyclotron, J
printf("\nThe frequency needed for applying alternating voltage = %4.1f MHz", f/1e+006);
printf("\nThe kinetic energy of protons when they leave the cyclotron = %2d MeV", ceil(K/(e*1e+006)));

// Result
// The frequency needed for applying alternating voltage = 30.5 MHz
// The kinetic energy of protons when they leave the cyclotron = 12 MeV 