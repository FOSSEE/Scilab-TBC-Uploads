// Example no B.3
// To determine average output thermal noise power
// Page no. 614

clc;
clear all;

// Given data
T0=300;                                                                   // Ambient room temperature in K
Fsys=8;                                                                   // Noise figure of the system
Tant=290;                                                                 // Effective temperature of antenna in K
K=1.38*10^-23;                                                            // Boltzmann's constant in J/K
B=30000;                                                                  // Effective bandwidth in Hz

Te=(Fsys-1)*T0;                                                           // Effective noise temperature in K
Ttotal=Tant+Te;                                                           // Overall system noise temperature in K

// To determine average output thermal noise power
Pn=(1+(Ttotal/T0))*K*T0*B;                                                // Average output thermal noise power in W
Pn=10*log10(Pn/(10^-3));                                                  // Average output thermal noise power in dBm

// Displaying the result in command window
printf('\n Average output thermal noise power = %0.1f dBm',Pn);

