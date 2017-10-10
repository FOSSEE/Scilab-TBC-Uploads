// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.5
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

Vs = 765;                                                     // Sending end voltage in kV
Vr= Vs;                                                       // receiving end voltage is equal to sending end voltage 

A = 0.9313;                                                   // Absolute line paramter A value in per unit from Ex 5.2
thetaA = 0.209*(%pi/180);                                     // angle value of Parameter A in degree from Ex 5.2
B = 97;                                                       // Absolute line paramter B value in Ohm from Ex 5.2
thetaZ = 87.2*(%pi/180);                                      // angle value of Parameter B in degree from Ex 5.2
Z1 = B;
Zc = 266.1;                                                   // The magnitude of Characteristic impedance in ohm from Ex 5.2
PrMAX1 = ((Vr*Vs)/Z1)-(((A*Vr^2)/Z1)*(cos(thetaZ-thetaA)));   // The theoretical maximum real power delivered in MW
SIL = (Vr)^2/Zc;                                              // Surge Impedance Load in MW
PrMAX2 = PrMAX1/SIL;                                          // The theoretical maximum real power delivered in per unit

printf('The theoretical maximun power delivered is  (PrMAX1) = %d  MW', PrMAX1);
printf('\nSurge Impedance Load is  (SIL) = %d  MW', SIL);
printf('\n\nThe theoretical maximun power delivered in pu of SIL is (PrMAX2) = %0.2f  per unit', PrMAX2);
