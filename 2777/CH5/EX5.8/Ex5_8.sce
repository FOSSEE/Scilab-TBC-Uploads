// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.8

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p_a = 6;                        // Total number of Poles in the Alternator
p_m = 4;                        // Total number of Poles of Induction Motor
N_a = 900;                      // Running Speed of the Alternator in RPM
N_m = 1250;                     // Running Speed of the Induction Motor in RPM
m = 3;                          // Total Number of phase in Induction Motor


// CALCULATIONS

f = (N_a*p_a)/120;                  // Frequency of the 6-pole Alternator running at 900 RPM in Hertz
Ns = (120*f)/p_m;                   // Synchronous Speed of 4-pole Induction Motor in RPM
s = (Ns-N_m)/Ns;                    // Slip 
fr = s*f;                           // Frequency of the Rotor Current in Hertz 


// DISPLAY RESULTS

disp("EXAMPLE : 5.8 : SOLUTION :-");
printf("\n (a) Frequency of the Rotor Current, fr = %.2f Hz \n",fr)

