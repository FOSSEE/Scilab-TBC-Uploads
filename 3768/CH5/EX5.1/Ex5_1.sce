//Example number 5.1, Page number 85

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;    //charge(c)
m=9.1*10**-31;    //mass(kg)
h=6.626*10**-34;   //plank constant
E=2000;            //energy(eV)
//Calculation
lamda=h/sqrt(2*m*E*e)*10**9;    //wavelength(nm)
//Result
printf("wavelength is %.4f nm",lamda)
