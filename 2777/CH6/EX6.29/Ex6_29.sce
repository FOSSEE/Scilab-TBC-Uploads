
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.29

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 400;                             // Operating Frequency of the Synchronous generator in Hertz
Ld = 50*10^-3;                       // Direct axis reactances in Henry
Lq = 15*10^-3;                       // Quadrature axis reactances in Henry
delta = 15;                          // Power(Torque) angle in degree
p = 2;                               // Number of the poles 
m = 3;                               // Number of the phase
I = 10;                              // Operating current in Amphere


// CALCULATIONS

Ns = (120*f)/p;                                               // Operating speed in RPM
Ws = (2*%pi*f)/(p/2);                                         // Synchronous speed in radians/s
xd = 2*%pi*f*Ld;                                              // Direct axis reactances in reactance
xq = 2*%pi*f*Lq;                                              // Quadrature axis reactances in reactance
E1 = 0;                                                       // Induced EMF in Volts (Its ZERO beacuse when field winding current is zero)
v = xq*I;                                                    // Applied voltage in Volts
T = (3*v^2*sind(2*delta)/(2*Ws))*((1/xq)-(1/xd));             // Developed Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.29: SOLUTION :-");
printf("\n (a) Operating speed, Ns = %.f RPM \n",Ns)
printf("\n (b) Developed Torque , T = %.5f N-m \n",T)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) xd = 12.56 instead of %.2f Ohms \n ",xd);
printf("\n                                     (b) xq = 3.768 instead of %.2f Ohms \n ",xq);
printf("\n                                     (c) v = 36.68 instead of %.2f V \n ",v);
printf("\n                                     (d) T = 0.07875 instead of %.4f N-m \n ",T);
printf("\n From Calculation of the d-axis and q-axis reactance (xd and xq respectively), rest all the Calculated values in the TEXT BOOK is WRONG because of the d-axis and q-axis reactance (xd and xq respectively) value is WRONGLY calculated and the same used for the further Calculation part \n")
