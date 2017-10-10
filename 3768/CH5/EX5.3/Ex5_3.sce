//Example number 5.3, Page number 85

clc;clear;
close;

//Variable declaration
me=9.1*10**-31;    //mass(kg)
h=6.62*10**-34;   //plank constant
mn=1.676*10**-27;    //mass(kg)
c=3*10**8;     //velocity of light(m/s)
//Calculation
lamda=h*10**10/sqrt(4*mn*me*c**2);     //de broglie wavelength(angstrom)  
//Result
printf("de broglie wavelength is %.1e Angstrom",lamda)
