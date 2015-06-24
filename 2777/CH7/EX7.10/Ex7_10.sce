
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.10

clear ; clc ; close ; // Clear the work space and console
 

// GIVEN DATA

L = 1.0;                                            // Length in Meter
S = 60;                                             // Number of slots
f = 50;                                             // Frequency in Hertz
v = 440;                                            // Operating Volage of the Motor in Volts
V = 11.5;                                           // Running speed of the motor in Meter/second
m = 3;                                              // Number of phases
p = 8;                                              // Total number of Poles


// CALCULATIONS

Vs = (2*L*f)/p;                                         // Synchronous linear speed in Meter/second
s = (Vs-V)/Vs;                                          // Linear slip
Vph = v/sqrt(3);                                        // Phase Voltage in Volts
Z1 = 6.0 + %i*5;                                        // Impedance in Ohms refer figure and page no. 526
Z2 = ((100*%i)*(5*%i+8.2/s))/(100*%i+5*%i+8.2/s);       // Impedance in Ohms refer figure and page no. 526
Z = Z1 + Z2;                                            // Total Impedance in Ohms
I = Vph/Z;                                              // Per phase Current when Machine is running at 11.5 m/s in Amphere
pf = cosd(atand(imag(I),real(I)));                      // Power factor lagging


// DISPLAY RESULTS

disp("EXAMPLE : 7.10 : SOLUTION :-") ;
printf("\n (a) Synchronous linear speed, Vs = %.1f m/s \n ",Vs);
printf("\n (b) Per phase current when Machine is running at 11.5 m/s, I = %.2f < %.2f A \n",abs(I),atand(imag(I),real(I)))
