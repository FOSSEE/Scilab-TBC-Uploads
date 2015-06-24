
//Example NO.11.1
//Page No.335
//To find dielectric constant of the material 
clc;clear;
C = (10^-9);//Capacitance -[F].
d = (2*10^-3);//Distance of separation -[m].
E0 = (8.854*10^-12);
A = (10^-4);//Area of capacitor -[m^2]
Er = ((C*d)/(E0*A));//Dielectric constant.
printf("\nThe dielectric constant of the material is %.2f",Er);
