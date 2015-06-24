// chapter 2
// example 2.7
// What will be the elongation
// page-19
clear;
clc;
// given
d=1.5; // in mm (diameter of the wire)
l=30; // in m (length of the wire)
w=89.2; // in kN/m^3 (weight of the copper)
E=90; // in GPa (modulus of elasticity)
// calculate
l=l*1E3; // changing unit from m to mm
w=w*1E3*1E-9; // changing unit from kN/m^3 to N/mm^3
E=E*1E3; // changing unit from GPa to N/mm^2
dl=w*l^2/(2*E); // calculation of the elongation 
printf("\nThe elongation of the wire is \t dl= %.2f mm",dl);
