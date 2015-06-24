
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.16

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Out_hp = 20;                   // Output of the Motor in HP
eta = 90/100;                  // Full load efficiency of the Motor
V = 220;                       // Motor voltage in Volts
ns = 5;                        // Number of the step of Starter
Rf = 220;                      // Field Resistance in Ohms
cr = 1.8;                      // Lowest Current rating is 1.8 times of the Full load current
Cu = 5/100;                    // Total Copper loss is 5% of the Input


// CALCULATIONS

Out = 20 * 746;                    ..       // Output of the Motor in Watt
Inp = (Out/eta);                            // Input of the Motor in KiloWatt
I = Inp/Rf;                                 // Full-Load Current in Amphere
Cu_l = Inp*Cu;                              // Total Copper loss in Watts
olf = (V ^ 2)/Rf;                           // Ohmic loss in the Fiels in the Watts
Acu = Cu_l - olf;                           // Armature Copper loss in Watts
Ra = Acu/(I * I);                           // Armature Resistance in Ohms
I2 = I * cr;                                // Lower Current in Amphere
n = ns - 1;                                 // Number of the Resistance
gama = ( (I2 * Ra)/Rf ) ^ (1/(n + 1));      // Current Ratio
I1 = I2/gama;                               // Initial Current in amphere
R1 = V/I1;                                  // Initial Resistance in Ohms
R2 = gama * R1;                             // Initial Resistance in Ohms
r1 = R1 - R2;                               // Graded Resistance in Ohms
R3 = gama * R2;                             // Initial Resistance in Ohms
r2 = gama * r1;                             // Graded Resistance in Ohms
r3 = gama ^ 2 * r1;                         // Graded Resistance in Ohms
r4 = gama ^ 3 * r1;                         // Graded Resistance in Ohms


// DISPLAY RESULTS

disp("EXAMPLE : 4.16 : SOLUTION :-") ;
printf("\n (a) Graded Resistances are %.4f Ohms, %.4f Ohms, %.4f Ohms and %.4f Ohms \n",r1,r2,r3,r4);
