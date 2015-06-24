
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.14

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 10 * 10 ^ 3;        // Rating of the Single Transformer in VA
f = 50;                 // Frequency in Hertz
Pc = 110;               // Required input no-load at normal voltage in Watts (Core loss)
Psc = 120;              // Required input Short-circuit at full-load current in Watts (copper loss or short circuit loss)


// CALCUATIONS
// case (a) for Unity power factor

cos_theta1 = 1;                                                                  // Unity Power factor
K1 = 1.0;                                                                        // Full load
K2 = 0.5;                                                                        // Half load
eta_11 = 100 * (K1*S*cos_theta1)/((K1*S*cos_theta1)+Pc+( K1 ^ 2 )*Psc);          // Efficiency at unity factor and full load ( beacuse taken k1 = 1 ) in percentage
eta_12 = 100 * (K2*S*cos_theta1)/((K2*S*cos_theta1)+Pc+( K2 ^ 2 )*Psc);          // Efficiency at unity factor and half load ( beacuse taken k2 = 0.5 ) in percentage

// case (b) for 0.8 power factor lagging

cos_theta2 = 0.8;                                                                // 0.8 power factor lagging
eta_21 = 100 * (K1*S*cos_theta2)/((K1*S*cos_theta2)+Pc+( K1 ^ 2 )*Psc);          // Efficiency at 0.8 power factor lagging and full load ( beacuse taken k1 = 1 ) in percentage
eta_22 = 100 * (K2*S*cos_theta2)/((K2*S*cos_theta2)+Pc+( K2 ^ 2 )*Psc);          // Efficiency at 0.8 power factor lagging and half load ( beacuse taken k2 = 0.5 ) in percentage

// Case (c) for 0.8 poer factor leading

eta_31 = eta_21;                         // Efficiency at 0.8 power factor leading and full load will be same as the Efficiency at 0.8 power factor lagging and full load in percentage
eta_32 = eta_22;                         // Efficiency at 0.8 power factor leading and half load will be same as the Efficiency at 0.8 power factor lagging and half load in percentage

// Case (d) Maximum Efficiency assumed that unity power factor 
// Psc = Pc At Maximum Efficiency

eta_41 = 100 * (K1*S*cos_theta1)/((K1*S*cos_theta1)+Pc+Pc);          // Maximum Efficiency at unity factor and full load ( beacuse taken k1 = 1 ) in percentage

// Case (e) Maximum Efficiency assumed that 0.8 power factor lagging 
// Psc = Pc At Maximum Efficiency

eta_51 = 100 * (K1*S*cos_theta2)/((K1*S*cos_theta2)+Pc+Pc);          // Maximum Efficiency at unity factor and full load ( beacuse taken k1 = 1 ) in percentage

// Case (f) Maximum Efficiency assumed that 0.8 power factor leading
// Psc = Pc At Maximum Efficiency

eta_61 = eta_51;                                                     // Maximum Efficiency at 0.8 power factor leading and full load will be same as the Maximum Efficiency at 0.8 power factor lagging and full load in percentage
out1 = K1*S*cos_theta1;                                             // Output at which maximum efficiency occurs at unity power factor at full load in Watts
out2 = K1*S*cos_theta2;                                             // Output at which maximum efficiency occurs at 0.8 power factor lagging at full load in Watts
out3 = K1*S*cos_theta2;                                             // Output at which maximum efficiency occurs at unity power factor leading at full load in Watts

// DISPLAY RESULTS

disp("EXAMPLE : 3.14 : SOLUTION :-") ;
printf("\n (a.1) Efficiency at unity power factor and full load , eta = %.2f Percent \n ",eta_11);
printf("\n (a.2) Efficiency at unity power factor and half load , eta= % .2f Percent \n",eta_12);
printf("\n (b.1) Efficiency at 0.8 power factor lagging and full load  , eta = %.2f Percent \n ",eta_21);
printf("\n (b.2) Efficiency at 0.8 power factor lagging and half load  , eta= % .2f Percent \n",eta_22);
printf("\n (c.1) Efficiency at 0.8 power factor leading and full load  , eta = %.2f Percent \n ",eta_31);
printf("\n (c.2) Efficiency at 0.8 power factor leading and half load  , eta= % .2f Percent \n",eta_32);
printf("\n  (d)  Maximum Efficiency at unity power factor and full load , eta = %.2f Percent \n ",eta_41);
printf("\n  (e)  Maximum Efficiency at 0.8 power factor lagging and full load , eta = %.2f Percent \n ",eta_51);
printf("\n  (f)  Maximum Efficiency at 0.8 power factor leading and full load , eta = %.2f Percent \n ",eta_61);
printf("\n  (g)  Output at which maximum efficiency occurs at unity power factor at full load = %.f W \n ",out1);
printf("\n  (h)  Output at which maximum efficiency occurs at 0.8 power factor lagging at full load = %.f W \n ",out2);
printf("\n  (i)  Output at which maximum efficiency occurs at 0.8 power factor leading at full load = %.f W \n ",out3);
printf("\n IN THE ABOVE PROBLEM MAXIMUM EFFICIENCY AND THE OUTPUT AT WHICH THE MAXIMUM EFFICIENCY OCCURS IS NOT CALCULATED IN THE TEXT BOOK \n")
