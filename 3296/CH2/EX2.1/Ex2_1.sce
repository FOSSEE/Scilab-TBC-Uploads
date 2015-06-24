// chapter 2
// example 2.1
// Detetmine the elongation of the rod
// page-16
clear;
clc;
// given
l=1; //.in m (length of the rod)
A=20*20; // in mm^2 (cross-sectional area of the rod)
P=40; // in kN (Tensile strength of the rod)
E=200; // in GPa (Modulus of elasticity for material of the rod)
// calculate
l=l*1E3; // changing unit from m to mm
P=P*1E3; // chaiging unit from kN to N
E=E*1E3; // changing unit from GPa to N/mm^2
dl=P*l/(A*E); // calculation of elongation of the rod
printf("\nThe elongation of the rod is \t dl=%.1f mm",dl);
