
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.1

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N = 600;                   // Speed of the driven Machine in RPM
D = 2;                     // Diameter of the Machine in Meter
L = 0.3;                   // Length of the Machine in Meter
Bm = 1.0;                  // Flux Density in Weber per Meter-Square 


// CALCULATIONS

n = N/60;                   // Revolution per second 
v = %pi * D * n;            // Peripheral velocity in Meter per second
E = Bm * v * L;             // Maximum EMF induced in the Conducter in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 4.1 : SOLUTION :-") ;
printf("\n (a) Maximum EMF induced in the Conducter , E = %.3f V \n ",E);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a)Induced EMF, E = 2.826 V instead of %.3f A \n ",E);
printf("\n From Calculation of the peripheral velocity(v), rest all the Calculated values in the TEXT BOOK is WRONG because of the peripheral velocity(v) value is WRONGLY calculated and the same used for the further Calculation part \n")

