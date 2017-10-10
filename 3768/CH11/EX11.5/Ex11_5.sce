//Example number 11.5, Page number 247

clc;clear;
close;

//Variable declaration
c=2.998*10**8;     //velocity of light(m/s)
h=6.626*10**-34;    //plank's constant(Js)
e=1.602*10**-19;     //charge(coulomb)
Eg=1.43;    //energy gap(eV)   
//Calculation
lamda=h*c*10**6/(Eg*e);        //wavelength(micro m)
//Result
printf("wavelength is %.2f micro-m",lamda)
