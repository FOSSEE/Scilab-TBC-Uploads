//Calculate the Potential Energy of ion induced dipole intraction  in between Sodium ion and Nitrogen  molucule

//Example 16.3

clc;

clear;

alpha=1.74*10^-30; //Proportionality constant in m^3

r=4.0*10^-10; //Distance between Sodium ion and Nitrogen molucule in m

epsilion=8.854*10^-12; //Molar absorption cofficient in C^2 N^-1 m^-2

q=1.602*10^-19; //Charge on electron in C

V1=-((1/2)*(alpha*q^2))/(4*%pi*epsilion*r^4); //Potential energy of ion induced dipole intraction in J

V=V1*6.023*10^23/1000; //Potential energy of ion induced dipole intraction in kJ mol^-1

printf("Potential energy of ion induced dipole intraction in between Sodium ion and Nitrogen molucule = %.1f kJ mol^-1",V); 

