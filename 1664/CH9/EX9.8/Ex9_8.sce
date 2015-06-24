
//Example No.9.8.
//Page No.270.
clc;clear;
Bz = 10*10^(-4);//Magnetic field -[Wb/m^2].
I = 1;//Current -[A].
W = 500*10^(-6);//Thickness of the sample -[m].
n = 10^(16);//Donor concentration.
e = 1.6*10^(-19);//Electron charge.
VH = ((Bz*I*3*%pi)/(8*n*e*W));//Hall voltage in the sample.
printf("\nThe Hall voltage in the sample is %3.3e V",VH);
