
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.31

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Pi = 2*10^6;                                // Power input in Volt-Amphere
v = 6.6*10^3;                               // Operating voltage in Volts


// CALCULATIONS

I = Pi/(v*sqrt(3));                         // Rated current in Amphere
V = v/sqrt(3);                              // Phase voltage in Volts
xs = v/(I*sqrt(3));                         // Synchronous reactance in Ohms

// For case (a) 0.8 pf lagging

pf_a = 0.8;                                 // Power factor
pfa_a = acosd(pf_a);                        // Power factor angle in degree
a_a = (V + (I*xs*sind(pfa_a)));
b_a = (I*xs*cosd(pfa_a));
E_a = sqrt(a_a^2 + b_a^2);                  // Induced EMF in Volts
delta_a = atand(b_a/a_a);                   // Torque (power) angle in degree
P_a = (3*V*E_a*sind(delta_a))/(xs*10^6);    // Power developed in MVA

// For case (b) 0.8 pf leading

pf_b = 0.8;                                 // Power factor
pfa_b = acosd(pf_b);                        // Power factor angle in degree
a_b = (V - (I*xs*sind(pfa_a)));
b_b = (I*xs*cosd(pfa_b));
E_b = sqrt(a_b^2 + b_b^2);                  // Induced EMF in Volts
delta_b = atand(b_b/a_b);                   // Torque (power) angle in degree
P_b = (3*V*E_b*sind(delta_b))/(xs*10^6);    // Power developed in MVA

// For case (c) UPF

pf_c = 1.0;                                 // Power factor
pfa_c = acosd(pf_c);                        // Power factor angle in degree
a_c = V;
b_c = I*xs;
E_c = sqrt(a_c^2 + b_c^2);                  // Induced EMF in Volts
delta_c = atand(b_c/a_c);                   // Torque (power) angle in degree
P_c = (3*V*E_c*sind(delta_c))/(xs*10^6);    // Power developed in MVA


disp("EXAMPLE : 6.31: SOLUTION :-");
printf("\n For Case (a) 0.80 lagging Power factor \n  Induced EMF, EMF = %.2f V \n",E_a)
printf("\n Power (Torque) angle = %.2f degree \n",delta_a)
printf("\n Power developed, P = %.1f MVA \n",P_a) 
printf("\n For Case (b) 0.80 leading Power factor \n  Induced EMF, EMF = %.f V \n",E_b)
printf("\n Power (Torque) angle = %.2f degree \n",delta_b)
printf("\n Power developed, P = %.3f MVA \n",P_b) 
printf("\n For Case (c) Unity Power Factor \n  Induced EMF, EMF = %.1f V \n",E_c)
printf("\n Power (Torque) angle = %.2f degree \n",delta_c)
printf("\n Power developed, P = %.1f MVA \n",P_c) 
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :-  xs = 20.14 instead of %.2f Ohms \n ",xs);
printf("\n  For Case (a) 0.80 lagging Pf (a.1)  E = 6561.42 instead of %.2f V \n ",E_a);
printf("\n                               (a.2)  delta = 25.45 instead of %.2f degree \n ",delta_a);
printf("\n  For Case (b) 0.80 leading Pf (b.1)  E = 3290 instead of %.1f V \n ",E_b);
printf("\n                               (b.2)  delta = 58.98 instead of %.2f degree \n ",delta_b);
printf("\n                               (b.3)  Power developed = 1.617 instead of %.3f MVA \n ",P_b);
printf("\n  For Case (c) UPF  (c.1)  E = 5190.2 instead of %.2f V \n ",E_c);
printf("\n                    (c.2)  delta = 42.77 instead of %.2f degree \n ",delta_c);
printf("\n In all the three cases from Calculation of the Synchronous reactance (xs), rest all the Calculated values in the TEXT BOOK is WRONG because of the Synchronous reactance (xs) value is WRONGLY calculated and the same used for the further Calculation part \n")
