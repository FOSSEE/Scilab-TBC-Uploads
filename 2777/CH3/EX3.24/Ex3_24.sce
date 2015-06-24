
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.24

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

VL = 11000;                     // Line-line voltage of the 3 identical 1-phase Transformer in Volts
IL = 10;                        // Line current of the 3 identical 1-phase Transformer in Amphere
a = 10;                         // Ratio of trun per phase of the 3 identical 1-phase Transformer


// CALCULATIONS
// For case (a) STAR-STAR

VPp_a = VL/sqrt(3);               // Primary phase volatge in Volts
IPp_a = IL;                       // Primary phase current in Amphere
VSp_a = VPp_a/a;                  // Secondary phase voltage in Volts
ISp_a = a*IPp_a;                  // Secondary phase current in Amphere
ISl_a = ISp_a;                    // Secondary line current in Amphere
VSl_a = VSp_a*sqrt(3);            // Secondary line voltage in Volts
Out_a = sqrt(3)*VSl_a*ISl_a/1000; // Output in kVA

// For case (b) STAR-DELTA

VPp_b = VL/sqrt(3);               // Primary phase volatge in Volts
IPp_b = IL;                       // Primary phase current in Amphere
VSp_b = VPp_a/a;                  // Secondary phase voltage in Volts
ISp_b = a*IPp_b;                  // Secondary phase current in Amphere
ISl_b = sqrt(3)*ISp_b;            // Secondary line current in Amphere
VSl_b = VSp_b;                    // Secondary line voltage in Volts
Out_b = sqrt(3)*VSl_b*ISl_b/1000; // Output in kVA

// For case (c) DELTA-DELTA

VPp_c = VL;                       // Primary phase volatge in Volts
IPp_c = IL/sqrt(3);               // Primary phase current in Amphere
VSp_c = VPp_c/a;                  // Secondary phase voltage in Volts
ISp_c = a*IPp_c;                  // Secondary phase current in Amphere
ISl_c = sqrt(3)*ISp_c;            // Secondary line current in Amphere
VSl_c = VSp_c;                    // Secondary line voltage in Volts
Out_c = sqrt(3)*VSl_c*ISl_c/1000; // Output in kVA

// For case (d) DALTA-STAR

VPp_d = VL;                       // Primary phase volatge in Volts
IPp_d = IL/sqrt(3);               // Primary phase current in Amphere
VSp_d = VPp_d/a;                  // Secondary phase voltage in Volts
ISp_d = a*IPp_d;                  // Secondary phase current in Amphere
ISl_d = ISp_d;                    // Secondary line current in Amphere
VSl_d = sqrt(3)*VSp_d;            // Secondary line voltage in Volts
Out_d = sqrt(3)*VSl_d*ISl_d/1000; //Output in kVA


// DISPLAY RESULTS

disp("EXAMPLE : 3.24 : SOLUTION :-") ;
printf("\n For STAR-STAR Connection \n\n (a.1) Secondary line voltage = %.f V \n ",VSl_a);
printf("\n (a.2) Secondary line current = % .f A \n",ISl_a);
printf("\n (a.3) Primary phase current = %.f A \n ",IPp_a);
printf("\n (a.4) Secondary phase current = %.f A \n",ISp_a);
printf("\n (a.5) Output = %.2f kVA \n ",Out_a);
printf("\n For STAR-DELTA Connection \n\n  (b.1) Secondary line voltage = % .f V \n",VSl_b);
printf("\n (b.2) Secondary line current = %.f A \n ",ISl_b);
printf("\n (b.3) Primary phase current = %.f A \n",IPp_b);
printf("\n (b.4) Secondary phase current = %.f A \n ",ISp_b);
printf("\n (b.5) Output = % .2f kVA \n",Out_b);
printf("\n For DELTA-DELTA Connection \n\n (c.1) Secondary line voltage = %.f V \n ",VSl_c);
printf("\n (c.2) Secondary line current = %.2f A \n",ISl_c);
printf("\n (c.3) Primary phase current = %.2f A \n ",IPp_c);
printf("\n (c.4) Secondary phase current = %.1f A \n",ISp_c);
printf("\n (c.5) Output = %.1f kVA \n ",Out_c);
printf("\n For DELTA-STAR Connection \n\n (d.1) Secondary line voltage = % .2f V \n",VSl_d);
printf("\n (d.2) Secondary line current = %.1f A \n ",ISl_d);
printf("\n (d.3) Primary phase current = %.2f A \n",IPp_d);
printf("\n (d.4) Secondary phase current  = %.1f A \n ",ISp_d);
printf("\n (d.5) Output = % .1f kVA \n",Out_d);
