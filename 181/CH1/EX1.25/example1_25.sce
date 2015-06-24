// Find drift velocity,mobility,conductivity
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-25 in page 51

clear; clc; close;

// Data given
A=0.835*10^-6; // Cross section of wire in m^2
J=2.4*10^6; // Current density in A/m^2
n_0=8.4*10^27; // Concentration of electrons in copper in electrons/m^3
e=1.6*10^-19; // Charge on an electron in C
ohm=0.0214; // Resistance per meter
E_0=2*ohm; // Electric field in V/m

// Calculations
v_0=(J)/(n_0*e);
printf("(a)The drift velocity is %0.2e m/s\n",v_0);
mu=v_0/E_0;
printf("(b)The mobility of electrons is %0.2e m^2/V-s\n",mu);
sigma=(n_0*10*e*mu);
printf("(c)Therefore the conductivity is %0.2e /ohm-m",sigma);

// Result
// (a) The drift velocity is 1.78*10^-3 m/s
// (b) Mobility in this case is 4.16*10^-2 m^2/V-s
// (c) Conductivity is 5.61*10^8 1/ohm-m