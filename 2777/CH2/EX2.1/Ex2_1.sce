
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 2 : FORCES IN AN ELECTROMAGNETIC SYSTEMS

// EXAMPLE : 2.1 

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

A = 0.0001;                // The Cross-sectional area of core in metre-square 
Mo = 4*%pi*(10)^(-7);      // Permeability of air in Henre/metre
Mr = 1000;                 // Relative permeability of core
N1 = 10;N2=20;N3=10;       // Number of turns
I1 = 1.0;I2=0.5;I3=1.5;    // Currents in Amphere
d = 2.5;                   // Dimension of inner window in centimetre
w = 1.0;                   // Each limb wide in centimeter


// CALCULATIONS

F = (N1*I1)+(N2*I2)-(N3*I3);          // MMF in Amphere-turns (minus because third coil produces the flux in opposite direction to that of other to coils)
L = ((d*4)+(I2*2*4))*10^-2;           // Length of the Magnetic path in metre (4-is sides of the windows)(2-Going and returning of current I2)
R = L/(Mr*Mo*A);                      // Reluctance of the Magnetic path in MKS unit of Reluctance
phi = (F*10^3)/R;                     // Flux in milli-Weber
B = phi/A;                            // Flux Density in Weber/metre Square
H = F/L;                              // Magnetic Field Intensity in Amphere-turns/Metre


// DISPLAY RESULTS

disp("EXAMPLE : 2.1 : SOLUTION :-") ;
printf("\n (a) Flux in the core, phi = %.6f mWb ,\n",phi);
printf("\n (b) Flux Density in the core, B = %.2f Wb/metre square  \n",B);
printf("\n (c) Magnetic Field Intensity in the core, H = %.2f At/m  \n",H);
