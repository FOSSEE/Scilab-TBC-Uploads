//Find  Flexural Strength Shear Strength and Modulous of Rupture
//Ex:8.1
clc;
clear;
close;
b=225;//in mm
h=10;//in mm
l=1100;//in mm
f1=250;//in N
m=f1*l/4;//in N-mm
f=f1/2;//in N
a=(6*m)/(b*h^2);//in N/mm^2
disp(a,"Flexural Strength (in N/sqmm) = ");
t=(3*f)/(2*b*h);//in N/sqmm
disp(t,"Shear Strength (in N/sqmm) = ");
f2=350;//in N at which glass breaks
r=f2*l/4;//in N-mm
i=(b*h^3)/12;//in mm^4
y=h/2;//in mm
mr=r*y/i;//in n/sqmm
disp(mr,"Modulous of Rupture (in N/sqmm) = ");