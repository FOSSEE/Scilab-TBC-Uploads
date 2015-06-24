// Scilab code Ex3.6: Pg 85 (2005)
clc; clear;

// Part (a)
I_o = 1;    // Total intensity of light, micro-W/cm^2
I = (0.030)*(.040)*I_o;    // Intensity available to produce photoelectric effect, nW/cm^2
printf("\nIntensity available to produce photoelectric effect = %3.1f nW/cm^2", I*1e+03);

// Part (b)
h = 6.6e-34;   // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
lamda = 250e-09;    // Wavelength, m
e_per_sec = (I*lamda*1e-06)/(h*c);   // Number of electrons emitted per second
printf("\nNumber of electrons emitted per second = %3.1e", e_per_sec);

// Part (c)
e = 1.6e-019;   // Energy equivalent of 1 eV, C
i = (e_per_sec)*e;     // Electric current in phototube, A
printf("\nElectric current in phototube = %3.1e A", i);

// Part (d)
f_o = 1.1e+15;   // Cut-off frequeny, Hz
phi = (h*f_o)/e;   // Work function for iron, eV
printf("\nWork function for iron = %3.1f eV", phi);

// Part (e)
V_s = (h*c/(e*lamda))-phi;        // Stopping voltage, V
printf("\nStopping voltage = %4.2f V", V_s);

// Result
// Intensity available to produce photoelectric effect = 1.2 nW/cm^2
// Number of electrons emitted per second = 1.5e-09
// Electric current in phototube = 2.4e-10 A
// Work function for iron = 4.5 eV
// Stopping voltage = 0.41 V
