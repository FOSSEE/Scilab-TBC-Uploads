// chapter 2
// example 2.9
// fig. 2.5
// Find deflections at C and B
// page-19-20
clear;
clc;
// given
l=16; // in m (length of the wire)
A=4; // in mm^2 (cross-sectional area of the wire)
W=20; // in N(weight of the wire)
E=200; // in GPa (modulus of elasticity)
// calculate
l=l*1E3; // changing unit from m to mm
E=E*1E3; // changing unit from GPa to N/mm^2
dl_C=W*l/(2*A*E); // calculation of the deflection at C due to self weight of the wire ABC
dl1=(W/2)*(l/2)/(2*A*E); // calculation of the deflection at B due to self weight of the wire AB
dl2=(W/2)*(l/2)/(A*E); // calculation of the deflection at C due to weight of the wire BC
dl_B=dl1+dl2; // total deflection at B
printf("\nThe deflection of the wire at C is \t dl_C= %.1f mm",dl_C);
printf("\nThe deflection of the wire at B is \t dl_B= %.2f mm",dl_B);
