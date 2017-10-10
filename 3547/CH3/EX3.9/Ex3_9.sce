// Example no.3.9
// To calculate a) the frequency separation between modes (b) the wavelength separation between modes
// Page no.133

clc;
clear;

// Given data
lambda=1.3*10^-6;                                            // Laser diode operating wavelength
L=300*10^-6;                                                 // Cavity length
n=3.5;                                                       // Refractive index of active region
c=3*10^8;                                                    // Speed of ligth in air (m/s)

// a)The frequency separation between modes
deltaf=c/(2*n*L);                                           // The frequency separation between modes in GHz

// Displaying the result in command window
printf('\n The frequency separation between modes =  %0.1f GHz',deltaf*10^-9);

// (b)The wavelength separation between modes
deltalambda=(lambda^2*deltaf)/c;                           // The wavelength separation between modes

// Displaying the result in command window
printf('\n The wavelength separation between modes = %0.1f nanometer',deltalambda*10^9);

// The wrong unit is givan in book
