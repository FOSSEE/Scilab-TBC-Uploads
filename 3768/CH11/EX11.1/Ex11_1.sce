//Example number 11.1, Page number 246

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(coulomb)
v=3*10**3;   //velocity of matter wave(m/s)
h=6.6*10**-34;    //plank's constant(Js)
lamda=600*10**-9;    //wavelength(m)
//Calculation
Ej=h*v/lamda;    //matter wave energy(J)
E=Ej/e;      //matter wave energy(eV)
//Result
printf("matter wave energy is %.2e eV",E)
//answer given in the book is wrong
