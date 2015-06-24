
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.16

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


V = 440;                       // Operating voltage of the alternator in Volts
VA = 20*10^3;                  // VA rating of the alternator in Volts-Amphere
f = 50;                        // Operating Frequency of the alternator in Hertz
N = 3000;                      // Rotation of the alternator in RPM
Ra = 0.0;                      // Armature reistance in Ohms
xl = 0.6;                      // Armature reactances in Ohms
pf = 0.8;                      // Power factor lagging
pfa = acosd(pf);                // ower factor angle in deg
p = (120*f)/N;                 // Number of poles
w = (2*%pi*f);                 //  Rotation speed in Radians per second
v = V/sqrt(3);                 // Rated phase voltage in Volts
I = VA/(sqrt(3)*V);            // Rated curent in Amphere
If = I;                        // Given field current = armature current from SCC test in Amphere
E = 16*If;                     // Open-circuit EMF at field current in Volts given from Equation E = 16If refer page no. 431
xs = E/(If*sqrt(3));           // Synchronous reactance in Ohms
Eo = sqrt((v+I*xs*sind(pfa))^2 + (I*xs*cosd(pfa))^2);           // Induced EMF in Volts
pa = atand(193.98/399.49);                                      // From above equation Eo
pr = ((Eo-v)/v)*100;                                            // Percent regulation 
P = (3*v*Eo*sind(pa))/(xs*1000);                                // Power inKilo-Watts
T = (P*1000)/w;                                                 // Torque devolped in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.16: SOLUTION :-");
printf("\n Induced EMF, EMF = %.f V \n",Eo)
printf("\n Power angle = %.2f degree \n",pa)
printf("\n Power, P = %.3f kW \n",P) 
printf("\n Counter Torque, T = %.2f N-m \n",T)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- \n (a) Induced EMF, EMF = 471 V instead of %.f V \n",Eo)
printf("\n (b) Power angle = 18.05 degree instead of %.2f degree \n",pa)
printf("\n (c) Power, P = 12.003 kV instead of %.3f kW \n",P) 
printf("\n (d) Counter Torque, T = 38.23 N-m instead of %.2f N-m \n",T)
printf("\n From Calculation of the Induced EMF(E), rest all the Calculated values in the TEXT BOOK is WRONG because of the Induced EMF(E) value is WRONGLY calculated and the same used for the further Calculation part \n")
