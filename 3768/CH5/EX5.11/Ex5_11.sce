//Example number 5.11, Page number 89

clc;clear;
close;

//Variable declaration
me=9.1*10**-31;    //mass(kg)
mp=1.6*10**-27;    //mass(kg)
h=6.626*10**-34;   //plank constant
c=3*10**10;    //velocity of light(m/s)
//Calculation
lamda=h/sqrt(2*mp*me*c**2)*10**10;    //de broglie wavelength(m)
//Result
printf("de broglie wavelength is %.5e Angstrom",lamda)
