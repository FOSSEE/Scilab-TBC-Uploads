// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

s = 60;                     // Total number of Slot
m = 3;                      // Total number of Phase
p = 4;                      // Total number of Pole


// CALCULATIONS

M = s/(m*p);                                 // Slot per pole per Phase
sigma = 180/m;                               // Phase Spread in angle (deg)
Ka = sind((M*sigma)/2)/(M*sind(sigma/2));    // Distribution Factor


// DISPLAY RESULTS

disp("EXAMPLE : 5.4 : SOLUTION :-");
printf("\n (a) Distribution Factor, Ka = %.1f \n",Ka)

