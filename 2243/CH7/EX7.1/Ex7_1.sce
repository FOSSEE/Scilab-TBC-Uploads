clc();
clear;
//Given :
n =1 ; // ground state
m = 9.109382*10^-31; //electron mass in kg
h = 6.625*10^-34; //planck's constant in Js
e = 1.602176*10^-19; // Charge of an electron in C
e0 = 8.854188*10^-12; // Vacuum permittivity in F/m
r1 = (n^2*h^2*e0)/(%pi*m*e^2);// Radius in A
v1 = e^2/(2*h*e0*n); // Velocity in m/s
E1 = -((m*e^4)/(8*n^2*h^2*e0^2)); // Energy of an electron in eV
// 1 A = 1.0*10^-10 m , 1 eV = 1.6*10^-19 J
printf("For hydrogen atom : \n Radius  = %.2f A \n Velocity = %.1f x 10^6 m/s \n Energy of an electron = %.1f eV",r1*10^10,v1*10^-6,E1/(1.6*10^-19));
