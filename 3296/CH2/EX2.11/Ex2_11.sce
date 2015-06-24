// chapter 2
// exapmle 2.11
// fig. 2.8
// Find the total elongation of the bar
// page-21-22
clear;
clc;
// given
A=500; // in mm^2 (cross-sectional area of the bar)
E=80; // in GPa (modulus of elasticity)
PA=100, PB=80, PC=50, PD=30 ; // in kN (forces acting at the points A,B,C,D)
l_AB=500; // in mm (length of part AB)
l_BC=1000; // in mm (length of part BC)
l_CD=1200; // in mm (length of part CD)
// calculate
P1=PB; // force acting on length AB
P2=PA-PB; // force acting on length AC
P3=-PD; // force acting on length CD     Here minus sign indicates the compression
l1=l_AB; // length of the rod on which P1 is acting
l2=l_AB+l_BC; // length of the rod on which P2 is acting
l3=l_CD; // length of the rod on which P3 is acting
dl=(1/(A*E))*(P1*l1+P2*l2+P3*l3); // calculation of elongation of the bar
printf("\nThe elongation of the bar is \t dl= %.2f mm",dl);