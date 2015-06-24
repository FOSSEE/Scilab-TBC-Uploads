// chapter 2
// example 2.8
// Find the maximum length of the wire
// page-19
clear;
clc;
// given
A=2; // in mm^2 (cross-sectional area)
W=12; // in N (weight)
dl=0.6; // in mm (elongation of the wire)
E=150; // in GPa (modulus of elasticity)
// calculate
E=E*1E3; // changing unit from GPa to N/mm^2
// Since dl=W*l/(2*A*E), therefor we get
l=2*dl*A*E/W; // calculation of the maximum length
printf("\nThe maximum length of the wire is \t l= %.f mm",l);
l=l*1E-3; // changing unit from mm to m
printf("  = %.f m",l);
