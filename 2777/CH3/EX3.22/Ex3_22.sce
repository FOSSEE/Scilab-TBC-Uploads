
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.22

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 10 * 10 ^ 3;                  // Rating of the Two-winding Transformer in VA
V1 = 2000;                        // HV side voltage of the Two-winding Transformer in Volts
V2 = 200;                         // LV side voltage of the Two-winding Transformer in Volts
V_A_H = 2200;                     // Two-winding Transformer is connected to auto transformer HV side in Volts
V_A_L = 200;                      // Two-winding Transformer is connected to auto transformer LV side in Volts
f = 50;                           // Frequency in Hertz


// CALCULATIONS
// for finding (a)

I2 = S/V2;                          // Rated LV side current of winding for Step-up Auto transformer in Amphere
I1 = S/V1;                          // Rated HV side current of winding for Step-up Auto transformer in Amphere
IaH = I2;                           // The HV side current in the Auto-Transformer for Full-load in Amphere
IaL = I2 + I1 ;                     // The LV side current in the Auto-Transformer for Full-load in Amphere
VL = V1;                            // LV side voltage in Volts
VH = V1 + V2;                       // HV side voltage in Volts
KVA_a_L = (VL*IaL)/1000;            // kVA rating of LV SIDE 
KVA_a_H = (VH*IaH)/1000;            // kVA rating of HV SIDE 

// For finding (b)

IbH = I1;                           // HV side Rated current through the Auto-Transformer in Amphere
IbL = I1 + I2;                      // LV side Rated current through the Auto-Transformer in Amphere
KVA_b_L = (V_A_L*IbL)/1000;         // kVA rating of LV SIDE as output Auto-Transformer
KVA_b_H = (V_A_H*IbH)/1000;         // kVA rating of HV SIDE as output Auto-Transformer 

// case (c)

V = V1;                             // Voltage on the Secondary, if the Commom windings are open


// DISPLAY RESULTS

disp("EXAMPLE : 3.22 : SOLUTION :-") ;
printf("\n (a.1)  HV side Curent supplied by the common windings , IH = %.f A \n ",IaH);
printf("\n (a.2)  LV side Curent supplied by the common windings , IL= %.f A \n",IaL);
printf("\n (b.1)  KVA rating of LV SIDE as output Auto-Transformer , KVAL = %.f kVA \n ",KVA_b_L);
printf("\n (b.2)  KVA rating of HV SIDE as output Auto-Transformer , KVAH= %.f kVA \n",KVA_b_H);
printf("\n  (c)   Voltage on the Secondary, if the Commom windings are open , V = %.f V \n ",V);
