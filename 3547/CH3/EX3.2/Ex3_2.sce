// Example no. 3.2
// To calculate (a) the wavelength of light emitted, (b) the ratio of spontaneous emission rate to stimulated emission rate, (c) the ratio of stimulated emission rate to absorption rate, and (d) the population density of the excited level.
// Page no. 100

clc;
clear;

// Given data
deltaE=1.26*10^-19;                                                    // The energy difference between two levels
h=1.054*10^(-34);                                                      // The distance between two levels
c=3*10^8;                                                              // The speed of ligth in m/s
kB=1.38*10^(-23);                                                      // The Boltzmann’s constant J/K
T=300;                                                                 // The absolute temperature in Kelvin
N1=10^19;                                                              // The population density in the ground state in cm^(-3)

// (a)The wavelength of light emitted
h=2*%pi*h;                                                             // The distance between two levels in J.s
f=deltaE/h;                                                            // The frequency in Hz
lambda=(c/f)*10^6;                                                     // The wavelength of ligth emitted in micrometer

// Displaying the result in command window
printf('\n The wavelength of ligth emitted = %0.2f micrometer',lambda);

// The calculation of this answer is wrong in the book

// (b)The ratio of spontaneous emission rate to stimulated emission rate
RspRst=(exp(deltaE/(kB*T))-1);                                        // The ratio of spontaneous emission rate to stimulated emission rate

// Displaying the result in command window
printf('\n The ratio of spontaneous emission rate to stimulated emission rate = %0.2f X 10^13',RspRst*10^-13);

// The calculation of this answer is wrong in the book

// (c)The ratio of stimulated emission rate to absorption rate
RstRab=(exp(-deltaE/(kB*T)));                                            // The ratio of stimulated emission rate to absorption rate

// Displaying the result in command window
printf('\n The ratio of stimulated emission rate to absorption rate = %0.2f X 10^-14',RstRab*10^14);

// The calculation of this answer is wrong in the book

// (d)The population density of the excited level
N2=(N1*exp(-deltaE/(kB*T)));                                             // The population density of the excited level in cm^(-3)

// Displaying the result in command window
printf('\n The population density of the excited level = %0.2f X 10^5 cm^(-3)',N2*10^-5);

// The calculation of this answer is wrong in the book

