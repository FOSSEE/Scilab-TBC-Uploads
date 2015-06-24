
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.25

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                    // Motor operating Volatge in Volts
Ra = 1.0;                   // Armature Resistance in Ohms
Rf = 220;                   // Field Resistance in Ohms
Ia1 = 20;                   // Armature Current in Amphere
N1 = 800;                   // Motor drving speed in RPM
N2 = 1000;                  // To be obtained speed in RPM


// CALCULATIONS

If = V/Rf;                                   // Field Current in Amphere
E1 = V - ( Ia1 - If ) * Ra;                  // Back EMF E1 at N1 Speed in Volts
// Now we have Back EMF E2 at N2 Speed, E2 = 220-Ia2*1.0 = 220-Ia2 and the field flux be proportional to the field current, since torque is constant we get, If2*Ia2 = If1*Ia1 = 20
// Thus (220-Ia2)/201 = (If2*N2)/(If1*N1) = If2*(1000/(800*1.0)), 220-Ia2 = 201*(10/8)*(20/Ia2) = 5000/Ia2 solving this we get Ia2^2 - 220Ia2 + 2000 = 0
Ia2 = poly ([5000 -220 1],'x','coeff');                 // Expression for the new Armature current in Quadratic form
r = roots (Ia2);                                        // Value of the New Armature current in Amphere
If2 = If*(Ia1/r(2,1));                                  // New field current in Amphere when New Armature current is 39.29A
Rfn = V/If2;                                            // New field resistance in ohms
ERf = Rfn - Rf;                                         // Extra resistance in Ohms


// DISPLAY RESULTS

disp("EXAMPLE : 4.25 : SOLUTION :-") ;
printf("\n (a) Extra resistance should be added in the field circuit for raising the speed to %.f RPM is = %.2f Ohms \n",N2,ERf);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Ia2 = 39.29 A and 180.71 A instead of %.2f A and %.2f A \n ",r(1,1),r(2,1));
printf("\n                                     (b) Extra resistance required is 212.22 Ohms  instead of %.2f Ohms \n ",ERf);
printf("\n From Calculation of the New armature current (Ia2), rest all the Calculated values in the TEXT BOOK is WRONG because of the New armature current (Ia2) value is WRONGLY calculated and the same used for the further Calculation part \n")
