
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.3

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

E = 420;                // EMF induced in Volts
N = 900;                // Rotation speed in RPM
phi = 0.06;             // Flux per pole in Weber per pole
Two_p = 4;              // Total number of poles 


// CALCULATIONS

n = N/60;                       // Revolution Per second
Zc = E/(Two_p*phi*n);           // Number of the Conductor in Parallel Path


// DISPLAY RESULTS

disp("EXAMPLE : 4.3 : SOLUTION :-") ;
printf("\n (a) Number of the Conductor in Parallel Path , Zc = %.2f Conductors nearly 117 conductors \n ",Zc);
