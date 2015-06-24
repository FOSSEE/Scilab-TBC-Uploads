
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.13

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 1200;              // Rotation speed of the Separately excited Generator in RPM at case (1)
Ia1 = 100;              // Current supplied by the Generator in Amphere
V1 = 220;               // Opearting Volatge of the Generator in Volts
Ra = 0.08;              // Armature Resistance in Ohms
N2 = 1000;              // Rotation speed of the Separately excited Generator in RPM at case (2)
Vb = 2.0;               // Total Brush drop in Volts


// CALCULATIONS

RL = V1/Ia1;                             // Load resistance in Ohms
E1 = V1 + Vb + (Ra * Ia1);               // Back EMF at case (1) in Volts
E2 = (N2/N1)*E1;                         //  Back EMF at case (2) in Volts (Excitation is Constant)
Ia2 = (E2 - Vb)/(RL + Ra);               // New load current in Amphere for case (2)


// DISPLAY RESULTS

disp("EXAMPLE : 4.13 : SOLUTION :-") ;
printf("\n (a) New load current at %.f RPM , Ia2 = %.2f A \n",N2,Ia2);
