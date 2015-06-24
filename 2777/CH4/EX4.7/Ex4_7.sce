
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.7

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 2;                  // Number of the Pole
N = 1000;               // Rotation speed of the Armature in RPM
Ia = 20;                // Armature Current in Amphere
CS = 36;                // Commutator Segments
BW = 1.4;               // Brush width is 1.4 times of the Commutator Segments
L = 0.09 * 10 ^ -3;     // Inducatnce of the each Armature Coil


// CALULATIONS

a = p;                  // Number of the Parallel paths (Equal to number of poles because Lap Connected Armature)
n = N/60;               // Revoultion per second
I = Ia/2;               // Current Through the each Conductor in Amphere
v = n * CS;             // Peripheral Velocity of Commutator in Commutator segments per Seconds
Tc = BW/v;              // Time of the Commutation in Seconds
Er = (L*2*I)/Tc;        // Reactance voltage in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 4.7 : SOLUTION :-") ;
printf("\n (a) Reactance voltage assuming Linear Commutation , Er = %.4f V \n",Er);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n     WRONGLY PRINTED ANSWERS ARE :- (a) Tc = 0.014 s instead of %.4f s \n",Tc);
printf("\n                                    (b) Er = 1.2857 V instead of %.4f V\n",Er);
printf("\n From Calculation of the Time of commutation (Tc), rest all the Calculated values in the TEXT BOOK is WRONG because of the Time of commutation (Tc) value is WRONGLY calculated and the same used for the further Calculation part \n")
