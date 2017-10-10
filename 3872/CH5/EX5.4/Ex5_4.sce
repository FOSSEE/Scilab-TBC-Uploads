// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.4
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

L = 300;                                   // Line length in km 
SI = 266.1;                                // Surge impedance in Ohm
lambda = 5000;                             // Wavelength in km
Vs = 765;                                  // Sending end voltage in kV
Vr = Vs;                                   // Receiving end voltage in kV

SIL = (Vs)^2/SI;                           // Surge impedance load in MW 
Vspu = (765/765);                          // Sending end voltage in per unit
Vrpu = (765/765);                          // Receiving end voltage in per unit
Pmax = Vspu*Vrpu*SIL/sin(2*%pi*L/lambda);  // The theoretical steady state stability limit of a lossless line in MW
SSL = 2.72*SIL;                            // Theoretically steady state stability limit in MW; taken from Figure 5.12

printf('\nThe steady state stability limit of a lossless line is  (Pmax) = %0.0f  MW', Pmax);
printf('\n\n Theoretically steady state stability limit is  (SSL) = %0.0f  MW', SSL);
