
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.6

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 6;                      // Number of the pole in DC Motor
Ia = 20;                    // Armature Current in Amphere 
Z = 1000;                   // Number of the Conductors
a = 6;                      // Number of the Parallel paths
phi = 25 * 10 ^ -3;         // Flux per pole in Weber


// CALCULATIONS

T = (p/a)*((Z*Ia*phi)/(2*%pi));        // Deleloped Torque in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 4.6 : SOLUTION :-") ;
printf("\n (a) Developed Torque in an Six-pole DC Motor , T = %.1f N-m \n ",T);


