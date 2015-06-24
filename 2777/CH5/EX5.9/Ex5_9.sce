// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.9

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 2;                        // Total number of Poles of Induction Motor
f = 50;                       // Frequency in Hertz
Nr = 2800;                    // Running Speed of the Induction Motor in RPM
m = 3;                        // Total Number of phase in Induction Motor
V = 400;                      // Operating Voltage of Induction Motor in Volts


// CALCULATIONS

Ns = (120*f)/p;                   // Synchronous Speed in RPM
s = 100*((Ns-Nr)/Ns);             // Slip in Percentage
fr = (s/100)*f;                   // Frequency of the Rotor Current in Hertz 


// DISPLAY RESULTS

disp("EXAMPLE : 5.9 : SOLUTION :-");
printf("\n (a) Slip, s = %.2f percent \n",s);
printf("\n (b) Frequency of the Rotor Current, fr = %.2f Hz \n",fr)


