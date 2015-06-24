
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.2

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 8;                          // Number of the poles in Dc machine
a = 8;                          // Number of the Parallel path
N = 500;                        // Rotation per minute in RPM
phi = 0.095;                    // Average flux in air gap in Weber per meter
Za = 1000;                      // Total number of the Conductor in Armature


// CALCUALTIONS

n = N/60;                       // Rotation (Revolution) per Second
E = (p/a)*n*phi*Za;             // EMF induced in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 4.2 : SOLUTION :-") ;
printf("\n (a) EMF induced , E = %.1f A \n ",E);

