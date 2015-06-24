
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.33

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

v = 6.6*10^3;                  // Operating voltage of the Synchronous motor in Volts
P = 5*10^6;                    // Operating power of the Synchronous motor in Watts
pf = 1.0;                      // Power factor
xd = 3.0;                      // Direct axis reactances in Ohms
xq = 1.0;                      // Quadrature axis reactances in Ohms
eta = 0.98;                    // OPerating efficiency


// CALCULATIONS

V = v/sqrt(3);                                  // Per phase voltage in Volts
I = P/(eta*v*sqrt(3));                         // Line current in Amphere
delta = atand((xq*I)/v);                       // power angle in degree
E = v*cosd(delta) + xd*I*sind(delta);          // Induced EMF in Volts
Tmax = ((3*E*V*sind(90))/xd) + ((3*V^2*sind(180))/2)*((1/xq)-(1/xd));                               // Maximum electromagnetic torque in N-m
T = ((3*E*V*sind(delta))/xd) + ((3*V^2*sind(2*delta))/2)*((1/xq)-(1/xd));
                         // Actual electromagnetic torque in N-m
Ratio = Tmax/T;                                // Ratio of the Maximum electromagnetic torque to the actual electromagnetic torque


// DISPLAY RESULTS

disp("EXAMPLE : 6.33: SOLUTION :-");
printf("\n (a) Ratio of the Maximum electromagnetic torque to the actual electromagnetic torque is %.2f \n",Ratio)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) delta = 2.41 instead of %.2f degree \n ",delta);
printf("\n                                     (b) E = 6379 instead of %.2f V \n ",E);
printf("\n                                     (c) Ratio = 10.84 instead of %.2f \n ",Ratio);
printf("\n From Calculation of the Power angle (delta), rest all the Calculated values in the TEXT BOOK is WRONG because of the Power angle (delta) value is WRONGLY calculated and the same used for the further Calculation part \n")
