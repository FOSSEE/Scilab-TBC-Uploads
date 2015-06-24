
//Example No. 3.1.
//Page No.98.
//To find numerical aperture.
clc;clear;
n1 = 1.6;//Refractive index of core.
n2 = 1.5;// Refractive index of cladding.
NA = sqroot((n1^(2))-(n2^(2)));//Numerical Aperture.
printf("\nThe numerical aperture of the fibre is %.4f",NA);
