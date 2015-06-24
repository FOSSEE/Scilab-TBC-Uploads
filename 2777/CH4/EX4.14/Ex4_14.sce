
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.14

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

I = 50;                       // Curent supplied by the Separately Excitated Generator in Amphere
V = 250;                      // Dc bus bar in Volts
phi_1 = 0.03;                 // Useful Flux in Weber
Ra = 0.5;                     // Armature Resistance in Ohms
phi_2 = 0.029;                // New(Changed) Flux in Weber


// CALCULATIONS

Vd = I * Ra;                                       // Voltage drop in the Armature in Volts
E1 = V + Vd;                                       // EMF Generated in Volts
E2 = (phi_2/phi_1)*E1;                             // EMF Generated in Volts immediately after flux changes but speed will remains same
Ia = (E2 - V)/Ra;                                 // Armature Current in Amphere immediately after flux changes
perct = 100 * (( phi_1 - phi_2)/phi_2);            // Percenatge change in the speed of the machine that is required to restore the original Armature current but EMF raised to the original value and its Proportional to the speed and flux


// DISPLAY RESULTS

disp("EXAMPLE : 4.14 : SOLUTION :-") ;
printf("\n (a) Armature Current immediately after flux changes, Ia = %.1f A \n",Ia);
printf("\n (b) Percenatge change in the speed of the machine (that is required to restore the original Armature current) is %.2f Percenatge \n",perct);
 

