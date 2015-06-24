// chapter 2
// exapmle 2.10
// fig. 2.6
// Find the change in the length of the bar
// page-21
clear;
clc;
// given
A=200; // in mm^2 (cross-sectional area of the bar)
E=200; // in GPa (modulus of elasticity)
P=50, P2=30; // in kN (forces acting at the ends)
l1=300; // in mm (length of part AB)
l2=800; // in mm (length of the bar)
// calculate
E=E*1E3; // changing unit from GPa to N/mm^2
P1=P-P2; // force acting on AB
P1=P1*1E3; // changing unit from kN to N
P2=P2*1E3; // changing unit from kN to N
dl=(1/(A*E))*(P1*l1+P2*l2); // calculation of change in the length of the bar
printf("\nThe change in the length of the bar is \t dl= %.2f mm",dl);