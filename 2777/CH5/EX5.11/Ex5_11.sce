
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.11

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


m = 3;                          // Total Number of phase in Induction Motor
p = 6;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
s = 0.03;                       // Slip


// CALCULATIONS

Ns = (120*f)/p;                     // Synchronous Speed in RPM
Nr = (1-s)*Ns;                      // Rotor Speed in RPM
Nf = Ns - Nr;                       // Speed of Forward Rotating magnetic fields with respect to stator and rotor in RPM
Nb = Ns + Nr;                       // Speed of Backward Rotating magnetic fields with respect to stator and rotor in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 5.11 : SOLUTION :-");
printf("\n (a) Speed of Forward Rotating magnetic fields with respect to stator and rotor is equal to + %.f RPM \n",Nf)
printf("\n (b) Speed of Backward Rotating magnetic fields with respect to stator and rotor is equal to + %.f RPM \n",Nb)


  
