
//Example NO.10.3
//Page No.306
clc;clear;
H = 1800;//Magnetic field -[A/m].
F = (3*10^-5);//Magnetic flux -[Wb].
A = 0.2*10^-4;//Area of cross section -[m].
u0 = (4*%pi*10^-7);
B = (F/A);//Magnetic flux density.
printf("\nMagnetic flux density is %.1f Wb/m^2",B);
ur = (B/(u0*H));//Relative permeability.
printf("\nRelative permeability of the material is %.2f",ur);
