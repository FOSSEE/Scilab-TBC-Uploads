// chapter 2
// exapmle 2.12
// fig. 2.10
// Determine the deformation of the steel rod
// page-22-23
clear;
clc;
// given
l=4.5; // in m (length of the rod)
D=25; // in mm (diamtere of the rod)
E=200; // in GPa (modulus of elasticity)
PA=60, PB=10, PC=20, PD=50 ; // in kN (forces acting at the points A,B,C,D)
l_AB=2; // in m (length of part AB)
l_BC=1; // in m (length of part BC)
l_CD=1.5; // in m (length of part CD)
// calculate
A=(%pi/4)*D^2; // calculation of the cross-sectional area
P1=PA-PB; // force acting on length AD
P2=PB; // force acting on length AC
P3=PC-PB; // force acting on length BC
l1=l_AB+l_BC+l_CD; // length of the rod on which P1 is acting
l2=l_AB+l_BC; // length of the rod on which P2 is acting
l3=l_BC; // length of the rod on which P3 is acting
l1=l1*1E3; // changing unit from m to mm
l2=l2*1E3; // changing unit from m to mm
l3=l3*1E3; // changing unit from m to mm
dl=(1/(A*E))*(P1*l1+P2*l2+P3*l3); // calculation of deformation of the steel rod
printf("\nThe cross-sectional area of the steel rod is \t A= %.f mm^2",A);
printf("\nThe deformation of the steel rod is \t\t dl= %.2f mm",dl);