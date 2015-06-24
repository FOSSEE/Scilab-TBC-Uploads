
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.21

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Refer figures 3.31(a), 3.31(b) and 3.31(c):- Page no. 121

VaH = 220;                   // HV side Voltage of the two winding Transformer in volts for case(a)
VaL = 110;                   // LV side Voltage of the two winding Transformer in volts for case(a)
VbH = 330;                   // HV side Voltage of the two winding Transformer in volts for case(b)
VbL = 220;                    // LV side Voltage of the two winding Transformer in volts for case(b)
VcH = 330;                    // HV side Voltage of the two winding Transformer in volts for case(c) 
VcL = 110;                    // LV side Voltage of the two winding Transformer in volts for case(c)
S = 1.5;                      // Ratings of the the two winding Transformer in kVA
I1 = 6.8;                     // Rated current in HV side in Amphere 
I2 = 13.6;                    // Rated current in LV side in Amphere 


// CALCULATIONS
// for case(a):- figure 3.31(b) page no. 121

IbH = I2;                        // Current of Auto-Transformer in HV side in Amphere
IbL = I1 + I2;                   // Current of Auto-Transformer in LV side in Amphere
KVA_b_L = (VbL*IbL)/1000;        // LV side kVA rating of the Auto-Transformer in kVA
KVA_b_H = (VbH*IbH)/1000;        // HV side kVA rating of the Auto-Transformer in kVA

// for case(b):- figure 3.31(c) page no. 121

IcH = I1;                         // Current of Auto-Transformer in HV side in Amphere
IcL = I1 + I2;                    // Current of Auto-Transformer in LV side in Amphere
KVA_c_L = (VcL*IcL)/1000;         // LV side kVA rating of the Auto-Transformer in kVA
KVA_c_H = (VcH*IcH)/1000;         // HV side kVA rating of the Auto-Transformer in kVA


// DISPLAY RESULTS

disp("EXAMPLE : 3.21 : SOLUTION :-") ;
printf("\n (a.1) Current of Auto-Transformer in HV side for case (b) , IH = %.1f A \n ",IbH);
printf("\n       Current of Auto-Transformer in LV side for case (b), IL= % .1f A \n",IbL);
printf("\n (a.2) LV side kVA rating of the Auto-Transformer for case (b), KVAL = % .3f kVA \n ",KVA_b_L);
printf("\n       HV side kVA rating of the Auto-Transformer for case (b), KVAH= % .3f kVA \n",KVA_b_H);
printf("\n (b.1) Current of Auto-Transformer in HV side for case (c) , IH = %.1f A \n ",IcH);
printf("\n       Current of Auto-Transformer in LV side for case (c) , IL= % .1f A \n",IcL);
printf("\n (b.2) LV side kVA rating of the Auto-Transformer for case (c), KVAL = % .3f kVA \n ",KVA_c_L);
printf("\n       HV side kVA rating of the Auto-Transformer for case (c) , KVAH= % .3f kVA \n",KVA_c_H);
