
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 2 : FORCES IN AN ELECTROMAGNETIC SYSTEMS

// EXAMPLE : 2.5 

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Refer figure 2.3(a):- Page no. 36

B = 1.0;                    // Flux Density in the Core in Weber/Meter-Square
Liron = 0.55;               // Mean length of the flux path of Iron in Meter
Lair = 0.002;               // Mean length of the flux path of Air Gap in Meter
I = 20;                     // Coil Current in Amphere
H = 200;                    // Field Intensity in Amphere-Turns/Meter
mue_r = 20000;              // Relative permeability of Ferrite core
mue_0 = 4*%pi*10^-7;        // Permeability of the air in Henry/Meter
a = 0.0025;                 // Area of the Cross sectional of the core oin Metre-Square


// CALCULATIONS 

phi = B*a;                             // Toatl Flux in the core in Weber
Rair = Lair/(mue_0*a);                 // Relucatnce in the Air gap
Fair = Rair*phi;                       // MMf in the Air gap in Amphere-Turns
Firon = H*Liron;                       // MMf in the Iron core in Amphere-Turns
F = Firon+Fair;                        // Total MMF in Amphere-Turns
N = F/I;                               // Number of turns in the Coil
F_new = B/(mue_0*mue_r);               // Field Intensity in Amphere-Turns/Meter
F_new_total = (Fair+F_new);            // Total MMF in Amphere-Turns
N_new = F_new_total/I;                 // Number of turns in the Coil


// DISPLAY RESULTS

disp("EXAMPLE : 2.5 : SOLUTION :-") ;
printf("\n (a) Number of turns in the Coil in air gap made of Silicon Steel having an field intensity 200At/m corresounds to 1.0 T Flux Density , N = %.2f appoximately 85 \n ",N);
printf("\n (b) Number of turns in the Coil for a ferrite core of having Relative premeability of 20000 and magnetic Field Density corresponnds to 1.0 T , N_new = %.2f appoximately 82  \n",N_new);
