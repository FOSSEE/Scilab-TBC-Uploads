clc();
clear;
//Given :
R = 1; // radius in A
N = 5*10^28 ; //  atoms/m^3
mu_0 = 4*%pi*10^-7; // permiability of free space in H/m
mu_r = 1;//relative permiability
m = 9.1*10^-31 // electron mass in kg
e = 1.6*10^-19 ; // charge of an electron in C
// R = 1*10^-10 m  because 1 A = 1.0*10^-10 m
chi = -(N*e^2*(R*10^-10)^2*mu_0*mu_r)/(4*m); //Susceptibility of diamagnetic material
printf("Susceptibility of diamagnetic materials  is %.2f x 10^-5",chi*10^5);
//Result obtained differs from that in textbook, because in textbook only the order of 10 is considered .  
