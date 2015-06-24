
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.1

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

D = 35*10^-2;                               // Outer diameter of the conducting disk in Meter
d = 10*10^-2;                               // Inner diameter of the conducting disk in Meter
B = 1.0;                                    // Axial magnetic field in Telsa
N = 900;                                    // Rotating shaft running in RPM


// CALCULATIONS

Wr = (2*%pi*N)/60;                           // Rotational angular speed in radians/s
Er = ((D^2-d^2)*B*Wr)/8;                     // EMF induced in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 7.1: SOLUTION :-");
printf("\n (a) Induced EMF in the outer and inner rims of the disk, Er = %.4f V \n",Er)
