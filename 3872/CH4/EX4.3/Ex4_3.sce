// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.3
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

f = 60;                                      // Single Phase line operating fruquency in Hz
S = 12;                                      // Strand Copper conductors
Dxy = 5;                                     // Geometrical Mean Distance between conductor centers in ft
Dxx =0.01750;                                // Geometrical Mean Radiance of Copper Conductor in feet from Table A.3
Dyy = Dxx;
l = 20;                                      // Line length in miles

Lx = (2*10^-7)*log(Dxy/Dxx)*1609*l;          // Line Inductance in Henry per conductor
Ly = Lx;
L = Lx+Ly;                                   // Total Inductance in Henry per Circuit
Xl = (2*%pi*f*L);                            // Total Inductive Reactance in Ohm per circuit

printf('Line Inductance is  (Lx) = %f  H per conductor',Lx);
printf('\nTotal Inductance is  (L) = %0.5f  H per circuit',L);
printf('\nTotal Inductive Reactance is  (Xl) = %0.2f  Ohm per circuit',Xl);
