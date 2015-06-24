
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.14

clear ; clc ; close ; // Clear the work space and console
 

// GIVEN DATA

Va = 220 * exp( %i * 0 * %pi/180);                                // Three phase in Volts
Vb = 230 * exp( %i * (-115) * %pi/180);                           //  Three phase in Volts
Vc = 250 * exp( %i * (-245) * %pi/180);                           //  Three phase in Volts


// CALCUALTIONS
// We know that operator :-

alpha = 1 * exp( %i * 120 * %pi/180);
alpha2 = 1 * exp( %i * (-120) * %pi/180);
Va0 = (Va+Vb+Vc)/3                                              // Zero sequence Voltage in Volts
Va1 = (Va+alpha*Vb+alpha2*Vc)/3                                 // Positive sequence Voltage in Volts
Va2 = (Va+alpha2*Vb+alpha*Vc)/3                                 // Negative sequence Voltage in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 7.14 : SOLUTION :-") ;
printf("\n (a) Zero sequence Voltage, Va0 = %.2f < %.2f V \n",abs(Va0),atand(imag(Va0),real(Va0)))
printf("\n (b) Positive sequence Voltage, Va1 = %.3f < %.2f V \n",abs(Va1),atand(imag(Va1),real(Va1)))
printf("\n (c) Negative sequence Voltage, Va1 = %.2f < %.1f V \n",abs(Va2),atand(imag(Va2),real(Va2)))
  
