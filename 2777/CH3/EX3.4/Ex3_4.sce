
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 1.5;               // Transformer Rating in KVA
E1 = 220;              // HV side voltage in volts
E2 = 40;               // LV side voltage in volts


// CALCULATION

Ihv = (S * 10 ^ 3)/E1;             // Rated HV side Curent in Amphere
Ilv = (S * 10 ^ 3)/E2;             // Rated lV side Curent in Amphere


// DISPLAY RESULTS

disp("EXAMPLE : 3.4 : SOLUTION :-") ;
printf("\n (a) Rated HV side Curent , Ihv = %.2f A \n ",Ihv);
printf("\n (b) Rated LV side Curent , Ilv = %.1f A \n",Ilv);
