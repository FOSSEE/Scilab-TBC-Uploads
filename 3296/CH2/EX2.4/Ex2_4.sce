// chapter 2
// example 2.4
// What is the value of Young's Modulus for the steel specimen
// page-17
clear;
clc;
// given
d=13; // in mm (diameter of the steel specimen)
dl=0.2; // in mm (elongation of the specimen)
l=200; // in mm (gauge length)
P=26.8; // in kN (Tensile force)
// calculate
A=(%pi/4)*d^2; // calculation of cross-sectional area of the specimen
// Since dl=P*l/(A*E), therefore
E=P*l/(A*dl); // claculation of Young's Modulus for the steel specimen
printf("\nThe cross-sectional area of the steel specimen is \t A=%.2f mm^2",A);
printf("\nThe Youngs Modulus for the steel specimen is \t E=%.1f kN/mm^2 = %.1f GPa",E,E);
