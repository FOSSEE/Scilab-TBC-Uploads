
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.19

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Sa = 200;               // Rating of the TWO 1-Phase Transformer in kVA
Z1 = 0.005 + 0.08 * %i  // Equivalent Impedance of the Transformer-1 in Per-Unit
Z2 = 0.0075 + 0.04 * %i // Equivalent Impedance of the Transformer-2 in Per-Unit
P = 400;                // Total load in kiloWatts
Cos_theta = 1.0;        // Unity power factor


// CALCULATIONS

kVA = P/Cos_theta;       // kVA rating of the Transformer
S = kVA;                 // kVA rating of the Transformer
S1 = ( Z2/(Z1+Z2) )*S;   // Load shared by Transformer-1 in kVA
S2 = S - S1;             // Load shared by Transformer-2 in kVA


// DISPLAY RESULTS

disp("EXAMPLE : 3.19 : SOLUTION :-") ;
printf("\n (a) Load shared by Transformer-1 , S1 = %.2f+j(%.2f) kVA \n ",real(S1),imag(S1));
printf("\n (b )Load shared by Transformer-2 , S2 = %.2f+j%.2f kVA \n ",real(S2),imag(S2));
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) S1 = (-131.90)+j(38.47)kVA instead of %.2f+j(%.2f) kVA \n ",real(S1),imag(S1));
printf("\n                                     (b) S2 = (268.1)+j(.38047)kVA  instead of %.2f+j%.2f kVA \n ",real(S2),imag(S2));
