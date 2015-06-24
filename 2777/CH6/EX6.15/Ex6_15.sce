
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.15

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


If = 1.25;                     // Given that rated voltage at air gap line for this field current in pu
IF = 0.75;                     // Rated current in SC test for this field current in pu
Ia = 1.0;                      // Rated current in Per unit
pf = 0.8;                      // Power factor
V = 1.0;                       // Rated Volatge in pu


// CALCULATIONS

pfa = acosd(pf);                                        // Power factor angle in deg
Voc = (V*IF)/If;                                        // Open circuit volatge in pu
xs = Voc/Ia;                                            // Syncronous reactance in pu
E = V + Ia*(cosd(pfa)-(%i)*sind(pfa))*(%i*xs);          // Induced EMF in pu
a = abs(E)*If;

// DISPLAY RESULTS

disp("EXAMPLE : 6.15: SOLUTION :-");
printf("\n Induced EMF, E = %.2f < %.2f pu \n ",abs(E),atand(imag(E),real(E)))
printf("\n The field current required for %.2f pu voltage on air gap line %.1f pu \n",abs(E),a)
