
//Example No.9.1.
//Page No.266.
//To find number of charge carrier.
clc;clear;
d = 2.2;//Conductivity -[ohm^-1 m^-1].
e = 1.6*10^(-19);//Value of electron.
u1 = 0.36;//Mobility of the electrons -[m^2 V^-1 s^-1].
u2 = 0.14;//Mobility of the holes -[m^2 V^-1 s^-1].
T = 300;//Temperature -[K].
n = (d/(e*(u1+u2)));//Number of charge carriers
printf("\nThe carrier concentration of an intrinsic semiconductor is %3.3e m^3",n);
