
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.8

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                                            // supply voltage in Volts
f = 50;                                             // Frequency in Hertz
p = 4;                                              // Number of poles
Xm = 60;                                            // Mutual reactance in Ohms
Rs = 1.0;                                           // Resistance of stator windings in Ohms
Xs = 6.0;                                           // Leakage reactance of stator windings in Ohms
Ra = 2.5;                                           // Resistance of Armature windings in Ohms
Xa = 6.0;                                           // Leakage reactance of armature windings in Ohms
P_hp = 1;                                           // Output power in HP
N = 1400;                                           // Motor running speed in RPM
alpha = 15;                                         // Brush displacement from the low-impedance position in degree 

// CALCULATIONS

Ns = (120*f)/p;                                                        // Synchronous speed in RPM
s = N/Ns;                                                              // Speed ratio
I = V / (Rs + %i*(Xs+Xm) + (%i*Xm^2*cosd(alpha))*(s*sind(alpha)-(%i*cosd(alpha)))/(Ra+%i*(Xa+Xm)));                                               // Curent in Amphere
pf = cosd(atand(imag(I),real(I)));                                     // Power factor lagging


// DISPLAY RESULTS

disp("EXAMPLE : 7.8: SOLUTION :-");
printf("\n (a) Currents, I = %.2f < %.2f A \n",abs(I),atand(imag(I),real(I)))
printf("\n (b) Power factor = %.4f lagging \n",pf)
