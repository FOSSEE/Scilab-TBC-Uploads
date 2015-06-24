
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.8

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N = 800;                // Rotation speed of the Commutator in RPM
D = 50;                // Diameter in Centimeter
BW = 1.5;               // Brush Width in Centimeter


// CALCULATIONS

r = D/2;                   // Radius in Centimeter
n = N/60;                  // Revoultion per second
w = (2 * %pi)*n;           // Angular velocity 
v = w*r;                   // Peripheral Speed in centimeter per second
Tc = (BW/v)*1000;                 // Time of the Commutation in Second


// DISPLAY RESULTS

disp("EXAMPLE : 4.8 : SOLUTION :-") ;
printf("\n (a) Time of the Commutation , Tc = %.4f ms \n",Tc);
