
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.10

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles in Induction Motor
f = 50;                         // Frequency in Hertz
s = 0.03;                       // Slip


// CALCULATIONS

Ns = (120*f)/p;                     // Synchronous Speed in RPM
Nr = (1-s)*Ns;                      // Rotor Speed in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 5.10 : SOLUTION :-");
printf("\n (a) Rotor Speed , Nr = %.f RPM \n",Nr)
