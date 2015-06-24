// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.24

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 1000;                  // Speed of the DC shunt Motor in RPM
Out_hp = 10;                // Output of the DC shunt Motor in HP
V = 220;                    // Motor operating Volatge in Volts
Ra = 0.5;                   // Armature Resistance in Ohms
Rf = 100;                   // Field Resistance in Ohms
eta = 90/100;               // Operating Efficiency of the Motor 


// CALCULATIONS

out = Out_hp * 746;                 // Output of the DC Motor in watts
I =  out/(V * eta);                 // Rated current in Amphere
If = V/Rf;                          // Field  current in Amphere
Ia = I-If;                          // Armature current in Amphere
E = V - (Ia*Ra);                    // Back EMF of the Motor in Volts
Rd = E/I;                           // Resistance at Dynamic Braking in Ohms
Rc = (V+E)/I;                       // Resistance at Counter Current Braking in Ohms

// DISPLAY RESULTS

disp("EXAMPLE : 4.24 : SOLUTION :-") ;
printf("\n (a) Resistance at Dynamic Braking, Rd = %.2f Ohms \n",Rd);
printf("\n (b) Resistance at Counter Current Braking, Rc = %.1f Ohms \n",Rc);
