//Example number 8.7, Page number 172

clc;clear;
close;

//Variable declaration
H=1800;      //magnetizing force(amp/m)
chi=3*10**-5;    //magnetic flux(wb)
A=0.2*10**-4;    //area(m**2)
//Calculation
B=chi/A;
mew=B/H;     //permeability(henry/m)
//Result
printf("permeability is %.3e H/m^2",mew)
//answer in the book is wrong
