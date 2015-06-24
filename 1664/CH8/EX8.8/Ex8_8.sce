//Example No.8.8.
//Page No.233.
clc;clear;
T = 298;//Temperature -[K].
k = 1.38*10^(-23);//Boltzman's constant.
Eg = 1.07*1.6*10^(-19);//Here E= E-Eg.
f = 1/(1+exp(Eg/(2*k*T)));//probability of an electron to the conduction band at 25 degree celcius.
printf("\nThe probability of an electron thermlly excited to the conduction band at 25 degree celcius is %3.3e",f);
