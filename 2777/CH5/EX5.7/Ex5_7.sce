// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.7

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 50;                     // Frequency of the 2-pole Induction Motor
p = 2;                      // Total Number of Poles


// CALCULATIONS

Ns = (120*f)/p;                 // Synchronous Speed in RPM
Ns5 = -(120*f)/(5*p);           // Synchronous Speed of 5th order space harmonic in RPM
N5 = -(120*5*f)/p;              // Synchronous Speed of 5th order time harmonic in RPM
Ns7 = (120*f)/(7*p);           // Synchronous Speed of 7th order space harmonic in RPM
N7 = (120*7*f)/p;              // Synchronous Speed of 7th order time harmonic in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 5.7 : SOLUTION :-");
printf("\n (a.1) Synchronous Speed of 5th order space harmonic, Ns5 = %.f RPM \n",Ns5)
printf("\n (a.2) Synchronous Speed of 5th order time harmonic, N5 = %.f RPM \n",N5)
printf("\n (b.1) Synchronous Speed of 7th order space harmonic, Ns7 = %.2f RPM \n",Ns7)
printf("\n (b.2) Synchronous Speed of 7th order time harmonic, N7 = %.f RPM \n",N7)


