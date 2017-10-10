//Example number 8.6, Page number 172

clc;clear;
close;

//Variable declaration
I=3000;      //magnetisation(amp/m)
mew0=4*%pi*10**-7;
B=0.005;     //flux density(weber/m**2)
//Calculation
H=(B/mew0)-I;      //magnetizing force(amp/m)
mewr=(I/H)+1;      //relative permeability
//Result
printf("magnetizing force is %.3f Amp/m",H)
printf("\n relative permeability is %.3f",mewr)
//answer in the book varies due to rounding off errors
