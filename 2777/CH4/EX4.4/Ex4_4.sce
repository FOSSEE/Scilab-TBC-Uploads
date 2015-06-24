
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

L = 0.3;            // Length of the Machine in Meter
Ia = 10;            // Current through The Conductors in Ampheres
N = 10;             // Number of the Conductors in each Slot
Za = 24;            // Number of the Slots
Bav = 0.6;          // Average Flux Density in Telsa
D = 0.1;            // Machine Daimeter in Meter


// CALCULATIONS

F = N*Ia*Bav*L;                // Force due to the Single Slot in Newton
T = (Bav*L*Ia*N*D*Za)/2        // Torque produced in the Machine in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 4.4 : SOLUTION :-") ;
printf("\n (a) Torque produced in the Machine, T = %.1f N-m \n",T);
