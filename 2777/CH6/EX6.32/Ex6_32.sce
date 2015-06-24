
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.32

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Refer phasor diagram figure 6.76 and page no. 476

pf = 0.8;                                               // Power factor lagging
pa = acosd(pf);                                         // Power factor angle in degree
v = 1.0 * exp( %i * pa * %pi/180);                      // Operating voltage of the alternator in pu
xd = 0.8;                                               // Direct axis reactances in pu
xq = 0.4;                                               // Quadrature axis reactances in pu
I = 1.0;                                                // Current in pu taking this as reference


// CALCULATIONS

A = v + (%i*xq*I);
delta = atand(imag(A),real(A))-pa;                      // Power angle in degree
Iq = I * cosd(atand(imag(A),real(A)));                  // d-axis currents in Amphere

Id = I * sind(atand(imag(A),real(A)));                  // q-axis currents in Amphere
E = abs(v)*cosd(delta) + Id*xd;                         // Induced EMF per phase in Per unit
pr = ((abs(E)-abs(v))/abs(v))*100;                      // Percentage regulation

// DISPLAY RESULTS

disp("EXAMPLE : 6.32: SOLUTION :-");
printf("\n (a) Induced EMF per phase, E = %.4f < %.2f pu \n",E,delta)
printf("\n (b) Power angle = %.2f degree \n",delta)
printf("\n (C) Percenatge Regulation, R = %.2f Percent \n",pr) 
printf("\n\n IN THIS PROBLEM PERCENTAGE REGULATION IS NOT CALCULATED IN THE TEXT BOOK\n")
