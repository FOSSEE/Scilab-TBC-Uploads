// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.3
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

z = 0.0165+(%i*0.3306);          // Positive sequence impedance in Ohm/km
y = %i*4.674*10^-6;              // Positive sequence admitance in S/km
L = 300;                         // line length in km

Z = z*L;                         // Circuit Impedance in Ohm
Y = (y/2)*L;                     // Circuit admitance in Siemens
GammaL = sqrt(z*y)*L;            // Propagation constant in per unit
F1 = sinh(GammaL)/(GammaL);      // Correction factor in per unit
F2 = tanh(GammaL/2)/(GammaL/2);  // Correction factor in per unit
Z1 = Z*F1;                       // Eqivalent pi circuit value in Ohm
Y1 = (Y)*(F2);                   // Shunt admitance of a Eqivalent pi circuit in Siemens
Zc=100-(abs(Z)*100/abs(Z1))      //Difference in Z for nominal and equivalent pi circuits
Yc=100-(abs(Y)*100/abs(Y1))      //Difference in Y/2 for nominal and equivalent pi circuits

printf('Nominal pi Circuit value Z in Ohm is %0.4f and its angle is %0.3f degree', abs(Z), atand(imag(Z), real(Z)));
printf('\nNominal pi Circuit value Y/2 in Siemens is %0.4e and its angle is %0.3f degree', abs(Y), atand(imag(Y), real(Y)));
printf('\n\nEqivalent pi circuit value Z1 in Ohm is  %0.2f and its angle is %0.3f degree', abs(Z1), atand(imag(Z1), real(Z1)));
printf('\nShunt admitance Y1/2 of Eqivalent pi circuit is %0.5e + i%0.3e  Siemens', real(Y1), imag(Y1));
printf('\n\nThe difference in  Z1 for nominal pi and equivalent pi circuit is %d percentage',Zc)
printf('\nThe difference in  Y1/2 for nominal pi and equivalent pi circuit is %d percentage',Yc)


