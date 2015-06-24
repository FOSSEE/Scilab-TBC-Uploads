
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.5

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 4;              // Number of the Poles in the DC machine
Nt = 100;           // Number of the turns in the Dc machine
N = 600;            // Rotation speed of the DC machine in RPM
E = 220;            // EMF generated in open circuit in Volts
Z = 200;            // Total number of the Conductor in armature


// CALCUALTIONS
// For case (a) Lap Connected

a = 4;                          // Number of the Poles in the DC machine
n = N/60;                       // Revolution per second
phi_a = (E*a)/(p*Z*n);          // Useful flux per pole when Armature is Lap connected in Weber

// For case (b) Wave Connected

a = 2;                          // Number of the Poles in the DC machine
phi_b = (E*a)/(p*Z*n);          // Useful flux per pole when Armature is Wave connected in Weber


// DISPLAY RESULTS

disp("EXAMPLE : 4.5 : SOLUTION :-") ;
printf("\n (a) Useful flux per pole when Armature is Lap connected , phi = %.1f Wb  \n ",phi_a);
printf("\n (B) Useful flux per pole when Armature is Lap connected , phi = %.3f Wb  \n ",phi_b);


