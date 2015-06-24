
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.23

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 100;                                  // Rating of the 3-Phase Transformer in kVA
VH = 11;                                  // HV side voltage in kilo-Volts
VL = 440;                                 // LV side voltage in Volts
Vl = 400;                                 // Line voltage in Volts
ZA = 0.6;                                 // Line impedance in line A in Ohms
ZB = 0.6*(0.8 + 0.6 * %i);                // Line impedance in line B in Ohms
ZC = 0.6*(0.5 - 0.866 * %i);              // Line impedance in line C in Ohms


// CALCULATIONS

Vp = Vl/sqrt(3);                                                  // Phase voltage in Volts 
VAB = Vl * exp( %i * 0 * %pi/180);                                // Line Voltage across line A and B in Volts
VBC = Vl * exp( %i * (-120) * %pi/180);                           // Line Voltage across line B and C in Volts
VCA = Vl * exp( %i * 120 * %pi/180);                              // Line Voltage across line C and A in Volts
VAN = (Vl/sqrt(3)) * exp( %i * (-30) * %pi/180);                  // Phase Voltage across line A and Neutral in Volts
VBN = (Vl/sqrt(3)) * exp( %i * (-150) * %pi/180);                 // Phase Voltage across line B and Neutral in Volts
VCN = (Vl/sqrt(3)) * exp( %i * (90) * %pi/180);                   // Phase Voltage across line C and Neutral in Volts
IA = VAN/ZA;                                                      // Line current in line A in Amphere
IB = VBN/ZB;                                                      // Line current in line B in Amphere
IC = VCN/ZC;                                                      // Line current in line C in Amphere
IN = IA + IB + IC ;                                               // Current in the Neutral in Amphere
Y = (1/ZA)+(1/ZB)+(1/ZC);                                         // Net Admittance in mho
VN = IN/Y;                                                        // Neutral Potential in Volts
VDA = VAN - VN;                                                   // Voltage drops across the ZA in Volts
VDB = VBN - VN;                                                   // Voltage drops across the ZB in Volts
VDC = VCN - VN;                                                   // Voltage drops across the ZC in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 3.23 : SOLUTION :-") ;
printf("\n (a.1) Line current in line A  , IA = %.f<%.f A \n ",abs(IA),atand(imag(IA),real(IA)));
printf("\n (a.2) Line current in line B  , IB = %.f<%.2f A \n",abs(IB),atand(imag(IB),real(IB)));
printf("\n (a.3) Line current in line C  , IC = %.f<%.f A \n ",abs(IC),atand(imag(IC),real(IC)));
printf("\n (b.1) Phase Voltage across line A and Neutral , VAN = %.f<%.f V \n",abs(VAN),atand(imag(VAN),real(VAN)));
printf("\n (b.2) Phase Voltage across line B and Neutral , VBN = %.f<%.f V \n ",abs(VBN),atand(imag(VBN),real(VBN)));
printf("\n (b.3) Phase Voltage across line C and Neutral , VCN = %.f<%.f V \n",abs(VCN),atand(imag(VCN),real(VCN)));
printf("\n  (c)   Neutral Potential , VN = %.1f<%.2f V \n ",abs(VN),atand(imag(VN),real(VN)));
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) IC = 385<-90.1 V instead of %.f<%.f A \n ",abs(IC),atand(imag(IC),real(IC)));
printf("\n                                     (b) VN = 230.5<78.17 V  instead of %.1f<%.2f V \n ",abs(VN),atand(imag(VN),real(VN)) );
printf("\n From Calculation of the IC, rest all the Calculated values in the TEXT BOOK is WRONG because of the IC value is WRONGLY calculated and the same used for the further Calculation part \n")
