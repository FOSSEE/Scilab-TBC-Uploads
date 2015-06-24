clc();
clear;
//Given :
h = 6.625*10^-34; //planck's constant in Js
m = 9.109*10^-31;// electron mass in kg
e = 1.6*10^-19; // charge of an electron in C
//Lambda = h/sqrt(2*m*eV)   here we dont have V , so let us caluclate the remaining part.
lambda = h/sqrt(2*m*e);// wavelength in A
// 1 A = 1.0*10^-10 m
printf("Lambda(A) = %.2f/sqrt(V) ",lambda/(1.0*10^-10));
