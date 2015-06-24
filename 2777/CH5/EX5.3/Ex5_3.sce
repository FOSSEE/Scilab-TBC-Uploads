
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.3

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

s = 24;                     // Total number of the pole
p = 4;                      // Total number of the poles in the Alternator


// CALCULATIONS 
// For Case (a) Short pitching by one Slots

spp = s/p;                     // Slot per pole 
E_a = ((180*2)/24)*(4/2);      // Slot angle in Electrical
kp_a = cosd(E_a/2);            // Pitch Factor
kp5_a = cosd((5*E_a)/2);       // Pitch Factor
kp7_a = cosd((7*E_a)/2);       // Pitch Factor

// For Case(b) Short pitching by two Slots

E_b = 2*((180*2)/24)*(4/2);    // Slot angle in Electrical
kp_b = cosd(E_b/2);            // Pitch Factor
kp5_b = cosd((5*E_b)/2)        // Pitch Factor
kp7_b = cosd((7*E_b)/2);       // Pitch Factor


// DISPLAY RESULTS

disp("EXAMPLE : 5.3 : SOLUTION :-") ;
printf("\n For Case (a) Short pitching by one Slots:- Pitch Facor , kp = %.4f \n ",kp_a);
printf("\n                                                          kp5 = %.4f \n ",kp5_a);
printf("\n                                                          kp7 = %.4f \n ",kp7_a);
printf("\n For Case (a) Short pitching by Two Slots:- Pitch Facor , kp = %.4f \n ",kp_b);
printf("\n                                                          kp5 = %.4f \n ",kp5_b);
printf("\n                                                          kp7 = %.4f \n ",kp7_b);

