clc();
clear;
//Given :
//(a)
m = 9.109382*10^-31; //electron mass in kg
c = 2.997925*10^8; //Speed of light  in m/s
h = 6.626069*10^-34; //planck's constant in Js
e = 1.602176*10^-19; // Charge of an electron in C
e0 = 8.854188*10^-12; // Vacuum permittivity in F/m
R = (m*e^4)/(8*h^3*e0^2*c);// Rydberg constant in m^-1
printf("Rydberg constant for hydrogen : %.2f cm^-1\n\n",R*10^-2);
//(b)
M = 1.672622*10^-27; // proton mass in kg
R1 = ((m*e^4)/(8*h^3*e0^2*c))*(1/(1 + (m/M))); // Rydberg Constant in m^-1
//1 m^-1 = 1.0*10^-2 cm^-1
printf("Rydberg Constant is %.2f cm^-1",R1*10^-2);
