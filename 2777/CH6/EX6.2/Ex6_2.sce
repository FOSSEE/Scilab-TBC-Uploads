
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.2

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 60;                             // Generating Frequency in Hertz
Ns = 1200;                          // Synchronous speed in RPM
Ns_r = 1000;                        // Alternator running speed in RPM


// CALCULATIONS

p = (120*f)/Ns;                     // Total number of poles
f_r = (p*Ns_r)/120;                 // Alternator running frequency in Hertz


// DISPLAY RESULTS

disp("EXAMPLE : 6.2 : SOLUTION :-") ;
printf("\n Alternator running frequency, f = %.f Hz \n ",f_r);
