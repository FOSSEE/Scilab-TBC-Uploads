


//Example No.3.4.
//Page No. 99.
//To find refractive index of core and acceptance angle.
clc;clear;
NA = 0.15;//Numerical aperture.
n2 = 1.55;//Refractive index of cladding.
n0 = 1.33;//Refractive index of water.
n1 = sqroot((NA^(2))+(n2^(2)));// Refractive index of core.
printf("\nThe refractive index of the core is %.4f",n1);
t = asind(NA/n0);// Acceptance angle.
mprintf("\nThe acceptance angle of the fibre is %.3f degree",t);
