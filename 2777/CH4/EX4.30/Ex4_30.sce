
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.30

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Vg = 110;                   // Generator operating Volatge in Volts
Vm = 102;                   // Motor operating Volatge in Volts
Vs = 274;                   // Supply Volatge in Volts
Ra = 1.0;                   // Armature Resistance in Ohms for both the Machines
Rf = 0.82;                  // Field Resistance in Ohms for both the Machines
N = 1440;                   // Speed of the Set in RPM
Ig = 17.5;                  // Generator current in Amphere
Im = 9.5;                   // Motor current in Amphere


// CALCULATIONS

Pi = Vs * Im;                                   // Input power in Watts
Pg = Vg * Ig;                                   // Output power in Watts
Pim = Vm * Im;                                  // Power Input to the Motor in Watts
Pl = Pi - Pg;                                   // Losses in the entire set in Watts
Pcu = Im^2*(Ra+2*Rf) + Ig^2*Ra;                 // Total Copper loss for both the Machines in Watts
P_l = Pi - Pg - Pcu;                            // Frictional, Windage and core losses of the both Machines in Watts
Po = P_l/2;                                     // Frictional, Windage and core loss of each Machines in Watts
eta_m = (1 - ((Po + Im^2*(Ra+Rf))/Pim))*100;     // Motor Effiicency in Percentage
Pig = Pg + Po + Ig^2*Ra + Im^2*Rf;              // Generator input in Watts
eta_g = (Pg / Pig)*100;                         // Generator Effiicency in Percentage
T = (Vg*Ig *60)/(2*%pi*N);                      // Torque in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 4.30 : SOLUTION :-") ;
printf("\n (a) Motor Efficiency , eta_m = %.2f percentage \n ",eta_m);
printf("\n (b) Generator Efficiency , eta_g = %.2f Percentage \n ",eta_g);
printf("\n (c) Torque , T = %.2f N-m \n ",T);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Generator input = 2307.5 W instead of %.f W \n ",Pig);
printf("\n                                     (b) eta_g = 83.42 Percenatge  instead of %.2f Percentage \n ",eta_g);
printf("\n From Calculation of the Generator input, rest all the Calculated values in the TEXT BOOK is WRONG because of the Generator input value is WRONGLY calculated and the same used for the further Calculation part \n")


