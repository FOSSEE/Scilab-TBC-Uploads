
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.13

clear ; clc ; close ; // Clear the work space and console
 

// GIVEN DATA

L1 = 1.1;                                               // Inductance in Henry
L2 = 1.07;                                              // Inductance in Henry
dtheta = 1;                                             // Rotor rotation in Mechanical degree
r = 0.10;                                               // Radius of the rotor in Meter
I = 20;                                                 // Coil Current in Amphere


// CALCULATIONS

dl = L1-L2;                                             // Change in Inductance of one of its stator coils in Henry
F = (I^2*dl)/(2*dtheta);                                // Force on the single rotor pole in Newton
T = F*r;                                                // Instantaneous Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 7.13: SOLUTION :-");
printf("\n (a) Instantaneous Torque, T = %.1f N-m \n\n",T)
printf("The force is a motoring force since inductance of the coil is rising")
