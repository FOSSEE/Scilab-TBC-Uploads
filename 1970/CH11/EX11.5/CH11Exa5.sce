// Scilab code Exa11.5 : : Page-536 (2011)
clc; clear;
B = 1.4;        // Magnetic field, tesla
R = 88e-002;        // Radius of the orbit, metre
q = 1.6023e-019;                // Charge of the deutron, C
M_d = 2.014102*1.66e-27;        // Mass of the deutron, Kg
M_He = 4.002603*1.66e-27;        // Mass of the He ion, Kg
E = B^2*R^2*q^2/(2*M_d*1.6e-13);        // Energy og the emerging deutron, mega electron volts
f = B*q/(2*%pi*M_d)*10^-6;        // Frequency of the deutron voltage, mega cycles per sec
B_He = 2*%pi*M_He*f*10^6/(2*q);    // Magnetic field required for He(++) ions, weber per square metre
B_change = B-B_He;        // Change in magnetic field, tesla
printf("\nThe energy of the emerging deutron = %4.1f MeV\nThe frequency of the dee voltage = %5.2f MHz\nThe change in magnetic field = %4.2f tesla", E, f, B_change);

// Result
// The energy of the emerging deutron = 36.4 MeV
// The frequency of the dee voltage = 10.68 MHz
// The change in magnetic field = 0.01 tesla 