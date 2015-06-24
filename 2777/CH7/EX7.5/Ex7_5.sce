
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.5

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

R = 15;                                             // Resistance of the fractional horse power AC series motor in Ohms
V = 230;                                            // AC supply voltage in Volts
f = 50;                                             // Frequency in Hertz
I = 1.2;                                            // Motor current in Amphere
NDC = 2500;                                         // Rotating speed of the Motor during DC Operation in RPM
L = 0.5;                                            // Total inductance in Henry


// CALCUALTIONS

X = 2*%pi*f*L;                                                  // Reactance in Ohms
NAC = NDC * (sqrt(V^2-(I*X)^2)-(I*R)) / (V-(I*R));              // Rotating speed of the Motor during AC Operation in RPM
pf = sqrt(1-((I*X)/V)^2);                                       // Power factor lagging


// DISPLAY RESULTS

disp("EXAMPLE : 7.5: SOLUTION :-");
printf("\n When the Motor operting at AC 230V, 50 Hz \n\n (a) NAC = %.f RPM \n",NAC)
printf("\n (b) Power factor = %.4f lagging \n",pf)
