
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.9

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

E2 = 100;                                   // Per phase standstill EMF in Volts
Z2s = 0.025 + %i*0.08;                      // Rotor circuit impedance at standstill
E = 50;                                     // Injected EMF in Volts


// CALCULATIONS

I2 = 0;                                     // Assuming Current is zero
s1 = (E/E2)+(I2*Z2s)/E2;                    // Slip when injected EMF is opposite to the E2 
s2 = (-E/E2)+(I2*Z2s)/E2;                   // Slip when injected EMF is phase with E2 


// DISPLAY RESULTS

disp("EXAMPLE : 7.9: SOLUTION :-");
printf("\n (a) Slip when injected EMF is opposite to the E2, s = %.1f \n",s1)
printf("\n (b) Slip when injected EMF is phase with E2, s = %.1f \n",s2)
