
//Example NO.10.6
//Page No.307
clc;clear;
H = (500);//Magnetic field strength -[A/m].
x = (1.2);//Suceptibility.
M = (x*H);//Magnetization.
printf("\nMagnetization of the material is %.0f A/m",M);
u0 = (4*%pi*10^-7);
B = (u0*(M+H));//Magnetic flux density.
printf("\nMagnetic flux density inside the material is %3.3e Wb/m^2",B);
