//Example number 5.6, Page number 86

clc;clear;
close;

//Variable declaration
lamda=1.66*10**-10;    //wavelength(m)
m=9.1*10**-32;    //mass(kg)
e=1.6*10**-19;    //charge(c)
h=6.626*10**-34;   //plank constant
//Calculation
E=h**2/(4*m*e*lamda**2);   //kinetic energy(eV)
v=h/(m*lamda);      //velocity(m/s)
//Result
printf("kinetic energy is %.2f eV",E)
printf("\n velocity is %.2e m/s",v)
