
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.9

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V1 = 11000;            // HV Side Voltage Rating of the Transformer in Volts
V2 = 440;              // LV Side Voltage Rating of the Transformer in Volts
R = 1.0;               // Resistance across the secondary side having 11kV in Ohms


// CALCULATIONS

a = V1/V2;                          // Turns ratio of the ideal transformers
R2 = (a ^ 2)*R;                     // Referred value of the resistance from Primary side having 440V in Ohms


// DISPLAY RESULTS

disp("EXAMPLE : 3.9 : SOLUTION :-") ;
printf("\n (a) Referred value of the resistance from Primary side having 440V , R2 = %.f Ohms \n ",R2);
