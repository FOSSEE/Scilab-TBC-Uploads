// chapter 2
// example 2.5
// Determine the internal diameter of the tube
// page-17
clear;
clc;
// given
l=3.5; // in m (length of the tube)
D=120; // in mm (external diameter of the tube)
P=400; // in kN (Tensile load on the tube)
dl=2; // in mm (elongation of the tube)
E=200; // in GPa (Modulus of elascticity)
// calculate
l=l*1E3; // changing unit form m to mm
P=P*1E3; // changing unit from kN to N
E=E*1E3; // changing unit from GPa to N/mm^2
// Since dl=P*l/(A*E), therefore
A=P*l/(E*dl); // claculation of cross-sectional area of the hollow tube
// Since A=(pi/4)*(D^2-d^2) , therefore we get
d=sqrt(D^2-(4*A/%pi)); // calculation of internal diameter of the tube
printf("\nThe internal diameter of the tube is \t d=%.2f mm",d);
// Note: Due to round off and precise calculation, there is slight variation in the answer
