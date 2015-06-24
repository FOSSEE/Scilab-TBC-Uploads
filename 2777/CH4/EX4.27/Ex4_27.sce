
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.27

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                    // DC series Motor operating Volatge in Volts
Ra = 1.0;                   // Armature Resistance in Ohms
Rf = 1.0;                   // Field Resistance in Ohms
I1 = 20;                    // Armature Current in Amphere
N1 = 1800;                  // Motor drving speed in RPM
If = 20;                    // Armature Current in Amphere
Rd = 0.5;                   // Diverter Resistance in Ohms


// CALCULATIONS

E1 = V - ( Ra + Rf ) * I1;                  // Back EMF in Volts
I2 = sqrt(3)*I1;                            // New Armature current in Amphere
If2 = ( Rd * I2 )/(Ra + Rd);                // New field Current in Amphere
E2 = V - ( Ra + (1/3))*I1;                  // New BAck EMF in Volts
N2 = (N1*E2*If)/(E1*If2);                   // New Rotation speed of the Motor in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 4.27 : SOLUTION :-") ;
printf("\n  (a)   New Rotation speed of the Motor at torque remains constant, N2 = %.f RPM \n",N2);
printf("\n (b.1)  New Armature Current at torque remains constant, I2 = %.2f A \n",I2);
printf("\n (b.2)  New Field Current at torque remains constant, If2 = %.2f A \n",If2);
 
