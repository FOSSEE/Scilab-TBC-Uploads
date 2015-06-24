
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.7

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                                            // supply voltage in Volts
f = 50;                                             // Frequency in Hertz
p = 4;                                              // Number of poles
Xm = 50;                                            // Mutual reactance in Ohms
Rs = 0.4;                                           // Resistance of stator windings in Ohms
Xs = 2.5;                                           // Leakage reactance of stator windings in Ohms
Ra = 2.2;                                           // Resistance of Armature windings in Ohms
Xa = 3.1;                                           // Leakage reactance of armature windings in Ohms
loss = 30;                                          // Rotational losses in Watts
N = 2000;                                           // Motor running speed in RPM


// CALCULATIONS

Ns = (120*f)/p;                                                        // Synchronous speed in RPM
s = N/Ns;                                                              // Speed ratio
I1 = V/(2*Rs + 2*%i*Xs + 2*%i*Xm + (%i*Xm^2)*((s-%i)/(Ra+%i*Xa+%i*Xm)));// line current in Amphere
pf = cosd(atand(imag(I1),real(I1)));                                   // Power factor lagging
I2 = (s-%i)*(%i*Xm*I1)/(Ra+%i*Xa+%i*Xm);                                  // line current in Amphere
P1 = V*abs(I1)*cosd(atand(imag(I1),real(I1)));                         // Input power in Watts
Pm = P1 - 2*(abs(I1)^2)*Rs - (abs(I2)^2)*Ra;                           // Mechanical power developed in Watts
Po = Pm - loss;                                                        // output power in Watts
eta = 100*(Po/P1);                                                     // Efficiency 


// DISPLAY RESULTS

disp("EXAMPLE : 7.7: SOLUTION :-");
printf("\n (a) Line currents, I1 = %.2f < %.2f A and I2 = %.2f < %.2f A \n",abs(I1),atand(imag(I1),real(I1)),abs(I2),atand(imag(I2),real(I2)))
printf("\n (b) Power factor = %.2f lagging \n",pf)
printf("\n (c) Efficiency = %.2f percentage \n",eta)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) I1 = 3.37 < -42.78 A instead of %.2f < j(%.2f) A \n ",abs(I1),atand(imag(I1),real(I1)));
printf("\n                                     (b) I2 = 5.26 < -77.34 A instead of %.2f < j(%.2f) A \n ",abs(I2),atand(imag(I2),real(I2)));
printf("\n                                     (b) eta = 81.53 percent instead of %.2f percent  \n ",eta)
printf("\n From Calculation of the I1, rest all the Calculated values in the TEXT BOOK is WRONG because of the I1 value is WRONGLY calculated and the same used for the further Calculation part \n")
