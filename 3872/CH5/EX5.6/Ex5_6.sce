// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.6
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

N = 4;                                                                              // Number of Conductors
l = 300;                                                                            // Line lenght in km
s = 1272000;                                                                        // Size of the conductor in cmil
Vs1 = 765;                                                                          // Sending end voltage in kV
V = 765;                                                                            // Base Voltage
Vr1 = 0.95*765;                                                                     // Receiving end voltage in kV

delta = 35;                                                                         // Phase angle in degree 
Z1 = 97;                                                                            // Absolute line paramter value in Ohm from Ex 5.5
thetaZ = 87.2;                                                                      // Angle value of Parameter B in radians from Ex 5.5
A = 0.9313;                                                                         // Absolute line paramter value in per unit from Ex 5.5
thetaA = 0.209;                                                                     // Angle value of Parameter A in degree from Ex 5.5
Pr = (((Vr1*Vs1)/Z1)*cosd(thetaZ-delta))-(((A*(Vr1)^2)/Z1)*cosd(thetaZ-thetaA));    // The real power delivered to the receiving end in MW
SIL = 2199; // Surge Impedance Load in MW taken from Ex 5.5
L = 1.49;                                                                           // Loadability in per unit of SIL  taken from fig 5.12
LL = L*SIL;                                                                         // Practical Line loadability in MW using fig. 5.12

pf = 0.986;                                                                         // Power factor
IRFL = Pr/(sqrt(3)*Vr1*pf);                                                         // Full load receiving end current in kA

A = 0.9313*exp(%i*0.209)*(%pi/180);                                                 // Line parameter value in per unit taken from Ex 5.2
B = 97.0*exp(%i*87.20)*(%pi/180);                                                   // Line parameter value in Ohm taken from Ex 5
theta = acos(pf);
Irfl = 2.616*exp(%i*theta);
Vs2 = Vs1/sqrt(3);                                                                  // line Voltage in kV
a = 0.8673;                                                                         // coefficient of second order Vrfl from the equation in part c
b = -54.24;                                                                         // coefficient Vrfl from the equation in part c
c = -130707.89;                                                                     // coefficient constant from the equation in part c
Vrfl = (-b+sqrt((b^2)-(4*a*c)))/(2*a);                                              // Vrfl value from the 2nd order Quadratic equation
Vrfl2 = Vrfl*sqrt(3);                                                               // Full load receiving end voltage in kVLL
VRFL = Vrfl2/V;                                                                     // Full load receiving end in per unit

absA = 0.9313;                                                                      // Absolute value of A taken from Ex 5.2
VRNL = V/absA;                                                                      // The receiving end no load voltage in kVLL taken from 5.1.19
PercentVR = ((VRNL-Vrfl2)/Vrfl2)*100;                                               // Full load voltage in percent

J = N*1.2;                                                                          // Approximate Current carrying capacity of 4 ACSR conductors in kA taken From table A.4

printf('\nPractical line loadability is  (LL) = %0.0f  MW', Pr);
printf('\nFull load receiving end current is  (Irfl) = %0.3f  kA', IRFL);
printf('\nFull load receiving end voltage is  (VRFL) = %0.3f  per unit', VRFL);
printf('\nThe receiving end no load voltage is  (VRNL) = %0.1f  kVLL', VRNL);
printf('\nFull load voltage is  (PercentVR) = %0.2f  Percent', PercentVR);
printf('\nApproximate Current carrying capacity of 4 ACSR conductors is  (J) = %0.1f  kA', J);
