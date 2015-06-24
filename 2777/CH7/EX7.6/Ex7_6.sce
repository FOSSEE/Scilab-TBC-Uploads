
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.6

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

R = 1.4;                                            // Total Resistance of the AC series motor in Ohms
V = 115;                                            // supply voltage in Volts
f = 50;                                             // Frequency in Hertz
N = 5000;                                           // Rotating speed in RPM
X = 12;                                             // Total reactance in Ohms
P = 250;                                            // Electrical power output in Watts
loss = 18;                                          // Rotational losses in Watts


// CALCULATIONS

Pd = P + loss;                                          // Mechanical power developed in Watts
// We know that Er = Pd/I and from phasor diagram in figure 7.11 page no. 501 V^2 = (Er+I*R)^2+(I*X)^2, 115^2 = (268/I-1.4*I)^2+(12*I)^2, 13225*I^2 = 71824+2.036*I^4-750.4*I^2+144*I^2, solving this we get 2.036*I^4-13831.4*I^2+71824 = 0, I^4-6793.42*I^2+3577 = 0 this gives I = 2.28A or 82.38A (The above calculation part is wrong )
i = poly ([3577 0 -6793.42 0 1],'x','coeff');                   // Expression for the Current in Quadratic form
a = roots (i);                                                  // 4-Value of the current in Amphere  
I = a(4,1);                                                     // Curent in Amphere neglecting higher value and negative value

pf_a = sqrt(1-((I*X)/V)^2);                                     // Power factor lagging
Er_a = sqrt(V^2-(I*X)^2)-(I*R);                                 // Rotational Voltage in Volts
T_a = (Er_a*I)/(2*%pi*N/60);                                    // Developed torque in Newton-meter
Ih = I/2;                                                       // Current halved in Amphere
pf_b = sqrt(1-((Ih*X)/V)^2);                                    // Power factor lagging when load current halved
Er_b = sqrt(V^2-(Ih*X)^2)-(Ih*R);                               // Rotational Voltage in Volts when load current halved
N2 = (N*Er_b*I)/(Er_a*Ih);                                      // New speed in RPM when load current halved
T_b = (Er_b*Ih)/(2*%pi*N2/60);                                  // Developed torque in Newton-meter when load current halved
eta = 100*(Er_b*Ih)/(V*Ih*pf_b);                                // Efficiency when load current halved


// DISPLAY RESULTS

disp("EXAMPLE : 7.6: SOLUTION :-");
printf("\n At rated condition, \n\n (a.1) Current, I = %.2f A \n",I)
printf("\n (a.2) Power factor = %.3f lagging \n",pf_a)
printf("\n (a.3) Developed torque = %.2f N-m \n",T_a)
printf("\n When load current halved (reduced to half), \n\n (b.1) Speed, N2 = %.f RPM \n",N2)
printf("\n (b.2) Power factor = %.4f lagging \n",pf_b)
printf("\n (b.3) Developed torque = %.2f N-m \n",T_b)
printf("\n (b.4) Efficiency = %.1f percenatge \n",eta)
printf("\n From Calculation of the Current(I), rest all the Calculated values in the TEXT BOOK is WRONG because of the Current equation and its value both are WRONGLY calculated and the same used for the further Calculation part, so all the values are in the TEXT BOOK IS WRONG \n")
