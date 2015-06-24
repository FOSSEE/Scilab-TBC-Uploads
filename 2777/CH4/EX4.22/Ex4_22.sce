
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.22

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 1000;                  // Speed of the DC shunt Motor in RPM
Out_hp = 20;                // Output of the DC shunt Motor in HP
V = 220;                    // Motor operating Volatge in Volts
Ra = 0.9;                   // Armature Resistance in Ohms
Rf = 200;                   // Field Resistance in Ohms
eta = 89/100;               // Operating Efficiency of the Motor 
Ra_a = 0.2;                 // Resistance inserted to the armature circuit


// CALCULATIONS

out = Out_hp * 746;                 // Output of the DC Motor in watts
I =  out/(V * eta);                 // Rated current in Amphere
If = V/Rf;                          // Field current in Amphere
Ia1 = I - If;                       // Armature current in Amphere
E1 = V - (Ia1 * Ra);                // Back EMF in Volts
// Assuming that Torque and Armature current is constant
E2 = V - ( Ra + Ra_a ) * Ia1;       // New Back EMF in Volts 
N2 = N1*(E2/E1);                    // New speed in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 4.22: SOLUTION :-") ;
printf("\n (a) New Speed of the Motor , N2 = %.2f RPM \n",N2);
