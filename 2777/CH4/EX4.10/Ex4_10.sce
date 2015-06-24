
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.10

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 6;                      // Number of the Poles
P = 100 * 10 ^ 3;           // Power rating of the DC machine in KiloWatts
V = 440;                    // Voltage rating of the DC machine in Volts
Z = 500;                    // Total number of the Armature Conductor
Ig = 1.0 * 10 ^ -2;         // Interpolar Air gap in Meter
Bi = 0.28;                  // Interpolar Flux Densist in Weber per Meter-Square
mue_0 = 4*%pi*10^ -7;       // Permeability of the air in Henry/Meter


// CALCULATIONS

Ia = P/V;                                // Full load current in Amphere
a = p;                                   // Number of the Parallel path (Equal to p because LAP WINDING)
ATi = (Z*Ia)/(2*a*p)+((Bi*Ig)/mue_0);     // Amphere turns for each Interpole 
Nc = ATi/Ia;                             // Number of turns per pole of interpole


// DISPLAY RESULTS

disp("EXAMPLE : 4.10 : SOLUTION :-") ;
printf("\n (a) Amphere turns for each Interpole, ATi = %.2f AT \n",ATi);
printf("\n (b) Number of turns per pole of interpole, Nc = %.2f turns per pole nearly %.f turns per pole \n",Nc,Nc);
