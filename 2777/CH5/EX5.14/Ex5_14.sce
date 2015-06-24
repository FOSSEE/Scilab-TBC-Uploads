
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.14

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 50;             // Stator Frequency of Inductor Motor in Hertz
fr = 10;            // Rotor Frequency of Inductor Motor in Hertz
p = 2;              // Number of poles


// CALCULATIONS

Ns = (120*f)/p;      // Synchronous Speed of Induction Motor in RPM
s = fr/f;            // Slip of the Induction Motor
Nr = (1-s)*Ns;       // Rotor Speed of the Induction Motor


// DISPLAY RESULTS

disp("EXAMPLE : 5.14 : SOLUTION :-");
printf("\n (a) Rotor Speed of Induction Motor, Nr = %.f RPM \n",Nr)
