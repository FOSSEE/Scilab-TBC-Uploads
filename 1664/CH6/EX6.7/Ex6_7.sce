
//Example No.6.7
//Page No.188.
//Find the angle between two planes (111) and (212) in a cubic lattice.
clc;clear;
// (u1,v1,w1) are the miller indices of the plane (111).
u1 = 1;
v1 = 1;
w1 = 1;
// (u2,v2,w2) are the miller indices of the plane (212).
u2 = 2;
v2 = 1;
w2 = 2;
u = acosd(((u1*u2)+(v1*v2)+(w1*w2))/((sqrt((u1^2)+(v1^2)+(w1^2))*sqrt((u2^2)+(v2^2)+(w2^2)))));//u is the angle between two planes.
printf("\n The angle between the planes (111) and (212) is %.3f degree",u);
