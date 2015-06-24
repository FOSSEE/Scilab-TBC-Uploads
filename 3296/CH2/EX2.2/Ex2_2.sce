// chapter 2
// example 2.2
// Find the stress and deformation of the cylinder
// page-16
clear;
clc;
// given
l=2; //.in m (length of the cylinder)
D=50; // in mm (outer diameter of cylinder)
d=30; // in mm (inside diameter of cylinder)
P=25; // in kN (Load on the cylinder)
E=100; // in GPa (Modulus of elasticity for cylinder material)
// calculate
l=l*1E3; // changing unit from m to mm
P=P*1E3; // chaiging unit from kN to N
E=E*1E3; // changing unit from GPa to N/mm^2
A=(%pi/4)*(D^2-d^2); // calculation of cross-sectional area of hollow cylinder
sigma=P/A; // calculation of stress
dl=P*l/(A*E); // calculation of deformation of the cylinder
printf("\nThe cross-sectional area of the hollow cylinder is \t A=%.f mm^2",A);
printf("\nThe stress in the cylinder is \t\t\t\t %.1f MPa",sigma);
printf("\nThe deformation of the cylinder is \t\t\t dl=%.1f mm",dl);
