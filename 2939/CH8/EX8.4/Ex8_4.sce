// Ex8_4
clc;
// Given:
V=1600;// potential across the electrodes
di=3;// inner diameter
do=40;// outer diameter
a=1.5;//in mm
A=20;//in mm

// Solution:
// Part(a)At the inner surface
r1=1.5;// in mm
V1=V*(log(A/r1)/log(A/a));
X1=V/(r1*(log(A/a)));
printf("\n The potential at the inner surface is = %f V",V1)
printf("\n The field at the inner surface is = %f V/cm",X1)
// Part(b)At the outer surface
r2=20;// in mm
V2=V*(log(A/r2)/log(A/a));
X2=V/(r2*(log(A/a)));
printf("\n \n The potential at the outer surface is = %f V",V2)
printf("\n The field at the outer surface is = %f V/cm",X2)
// Part(c)In mid-way between the cylinder
r3=(A+a)/2;// in mm
V3=V*(log(A/r3)/log(A/a));
X3=V/(r3*(log(A/a)));
printf("\n \n The potential in mid-way between the cylinder is = %f V",V3)
printf("\n The field in mid-way between the cylinderis = %f V/cm",X3)
