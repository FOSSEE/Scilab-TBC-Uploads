//Example number 8.3, Page number 170

clc;clear;
close;

//Variable declaration
H=220;        //magnetic field intensity(amp/m)
I=3300;      //magnetisation(amp/m)
//Calculation
mewr=1+(I/H);      //relative permeability
//Result
printf("relative permeability is %d",mewr)
