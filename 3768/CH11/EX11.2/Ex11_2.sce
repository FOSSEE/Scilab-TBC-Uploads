//Example number 11.2, Page number 246

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(coulomb)
c=3*10**10;   //velocity of light(m/s)
h=6.6*10**-34;    //plank's constant(Js)
Eg=3;    //energy gap(eV)
//Calculation
lamda=h*c*10**9/(Eg*e);     //wavelength of photon(nm)
//Result
printf("wavelength of photon is %.f nm",lamda)
//answer given in the book is wrong
