
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.2

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

D = 0.120;                  // Outer Radius of the Printed Circuit Motor in meter
d = 0.060;                  // Inner Radius of the Printed Circuit Motor in meter
    B = 0.7;                // Axial Flux Density in Telsa
V = 12;                     // Volage Supplied to the Motor in Volts
R = 2700;                   // Motor Speed in RPM
n = 0.65;                   // Efficiency of Motor
p = 94;                     // Output Power of Motor in Watts
I = 12;                     // Motor current in Ampheres


// CALCULATIONS

w = ((2*(%pi))*R)/60;        // The Angular Velocity in Radians/second
T = p/w;                     // Torque in Newton-Meter
N = (8*T)/((D^2-d^2)*B*I)    // Total Number of Conductors


// DISPLAY RESULTS

disp("EXAMPLE : 7.2 : SOLUTION :-") ;
printf("\n (a) Torque, T = %.2f N-m \n ",T);
printf("\n (b) Total Number of Conductors, N = %.2f nearly 30 \n",N);
