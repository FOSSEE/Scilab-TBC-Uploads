// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.28

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                    // DC shunt Motor operating Volatge in Volts
Ra = 1.0;                   // Armature Resistance in Ohms
Rf = 220;                   // Field Resistance in Ohms
In1 = 5;                    // No-Load Current in Amphere
N1 = 1000;                  // Motor drving speed in RPM
inp = 10 * 10 ^ 3;          // Motor input in Watts


// CALCULATIONS

If = V/Rf;                              // Field Current in Amphere
Ian1 = In1 - If;                        // No load Armature Current in Amphere
E1 = V - (Ian1 * Ra);                   // Back EMF in Volts
Iin = inp/V;                            // Motor Input Current in Amphere
Ia = Iin - If;                          // Armature current in Amphere
E2 = V - (Ia * Ra);                     // New Back EMF in Volts
N2 = (N1*E2)/E1;                        // New Rotation speed of the Motor in RPM
Pa = E2 * Ia;                           // Developed Armature Power in Watts
T = Pa/((2*%pi*N2)/60);                 // Developed Torque in Newton-Meter
Pi = V * In1;                           // No-Load input Power in Watts
Pa_cu = Ian1 ^ 2 * Ra;                  // No-Load Armature Copper loss in Watts
F_loss = Pi - Pa_cu;                    // Fixed losses in Watts
Pa_cu_load = Ia ^ 2 * Ra;               // Loaded Armature Copper loss in Watts 
Total_loss = F_loss + Pa_cu_load;       // Total losses in loaded conditions in Watts
out = inp - Total_loss;                 // Shaft output in Watts 
Ts = out/((2*%pi*N2)/60);               // Shaft torque in Newton-Meter
eta = (out/inp)*100;               
      // Efficiency in Percentage


// DISPLAY RESULTS

disp("EXAMPLE : 4.28 : SOLUTION :-") ;
printf("\n  (a)  New Rotation speed of the Motor , N2 = %.f RPM \n",N2);
printf("\n (b.1) Developed Torque, T = %.1f N-m A \n",T);
printf("\n (b.2) Shaft torque, Ts = %.2f N-m \n",Ts);
printf("\n  (c)  Efficiency in Percentage, eta = %.2f percent  \n",eta);

 
