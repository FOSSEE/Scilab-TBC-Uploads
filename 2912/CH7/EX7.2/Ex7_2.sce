//chapter 7
//example 7.2
//Calculate the resultant voltage across the capacitor
//page 187
clear;
clc;
//given
A=650; // in mm^2 (cross-sectional area)
d=4; // in mm (seperation between plates)
Eo=8.85E-12; // in F/m (absolute permittivity)
Er=3.5; // di-electric constant of the material
Q=2E-10; // in C (charge on plates)
//calculate
A=A*1E-6; // changing unit from mm^2 to m^2
d=d*1E-3; // changing unit from mm to m
C=Er*Eo*A/d;// calculation of capacitance
V=Q/C; // calculation of charge
printf('\nThe capacitance of capacitor is \t C=%1.2E C',C);
C=C*1E12; // changing unit of capacitance from F to pF
printf('\n\t\t\t\t\t  =%.2f pF',C);
printf('\n\nThe resultant voltage across the capacitor is \t V=%.2f V',V);
// NOTE: The answer is wrong due to calculation mistake. The mistake is that in the book Value of cross-sectional area and seperation
//       between plates is considered in cm and di-electric constant has not been considered.
