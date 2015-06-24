
//Example NO.10.5
//Page No.307
clc;clear;
H = (2*10^5);//Magnetic field strength -[A/m].
ur = 1.01;//Relative permeability.
u0 = (4*%pi*10^-7);
B = (u0*ur*H);//Magnetic flux density.
printf("\nMagnetic flux density is %.4f Wb/m^2",B);
M = ((0.2538/u0)-(H));//Magnetization
printf("\nMagnetization of the material is %.2f A/m",M);
