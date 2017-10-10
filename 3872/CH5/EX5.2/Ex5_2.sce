// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.2
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

V = 765;                                      // Line voltage in kV
f = 60;                                       // frequency in Hz
L = 300;                                      // line length in km
z = 0.0165+(%i*0.3306);                       // Positive sequence impedance in Ohm/km
y = %i*4.674e-6;                              // Positive sequence admitance in S/km
Zc = sqrt(z/y);                               // Characteristic impedance in Ohm
GammaL = sqrt(z*y)*L;                         // Propagation constant in per unit
eGammaL = exp(0.00930)*exp(%i*0.3730);
eNegGammaL = exp(-0.00930)*exp(-%i*0.3730);
coshGammaL = (eGammaL+eNegGammaL)/2;         // Hyperbolic function
sinhGammaL = (eGammaL-eNegGammaL)/2;         // Hyperbolic function
A = cosh(GammaL);                            // line parameter in per unit
D = A;                                       // line parameter in per unit
B = Zc*sinh(GammaL);                         // line parameter in Ohm
C = (1/Zc)*sinh(GammaL);                     // Line parameter in S
Bnominalpi = z*L;                            // The B parameter for the nominal pi circuit in Ohm
Bdiff=100-(abs(B)/abs(Bnominalpi))*100;      //The difference in B parameter in percentage

printf('\n\The line parameter A in per unit is %0.4f and its angle is : %0.3f degree', abs(A), atand(imag(A), real(A)));
printf('\nThe line parameter B in Ohm is %0.1f and its angle is : %0.1f degree', abs(B), atand(imag(B), real(B)));
printf('\nThe line parameter C in Siemens is %0.2e and its angle is : %0.2f degree', abs(C), atand(imag(C), real(C)));
printf('\n\The line parameter D in per unit is %0.4f and its angle is : %0.3f degree', abs(A), atand(imag(A), real(A)));
printf('\nThe B parameter for the nominal pi circuit in Ohm is  (Bnominalpi) : %0.1f and its angle is : %0.2f degree', abs(Bnominalpi), atand(imag(Bnominalpi), real(Bnominalpi)));
printf('\nThe difference in B parameter for the nominal pi circuit is %d percentage',Bdiff)
