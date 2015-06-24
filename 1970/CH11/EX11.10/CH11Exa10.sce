// Scilab code Exa11.10 : : Page-538 (2011)
clc; clear;
e = 1.6023e-19;        // Charge of an electron, C
E = 70*1.6e-13;        // Energy, electron volts
R = 0.28;            // Radius of the orbit, metre
c = 3e+08;            // Velocity of light, metre per sec
B = E/(e*R*c);        // Magnetic field intensity, tesla
f = e*B*c^2/(2*%pi*E);        // Frequency, cycle per sec
del_E = 88.5*(0.07)^4*10^3/(R);     // Energy radiated by an electron, electron volts
 printf("\nThe frequency of the applied electric field = %5.3e cycles per sec \nThe magnetic field intensity = %4.3f tesla\nThe energy radiated by the electron = %3.1f eV", f, B, del_E);

// Result
// The frequency of the applied electric field = 1.705e+008 cycles per sec 
// The magnetic field intensity = 0.832 tesla
// The energy radiated by the electron = 7.6 eV 