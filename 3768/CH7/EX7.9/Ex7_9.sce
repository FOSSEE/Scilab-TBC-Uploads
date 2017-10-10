//Example number 7.9, Page number 149

clc;clear;
close;

//Variable declaration
C=4*10**-6;    //capacitance(F)
epsilonr=200;       //relative dielectric constant
V=2000;       //voltage(V)
//Calculation
C0=C/epsilonr;    //energy in condenser(F)
E=C0*V/2;      //energy in dielectric(J)
//Result
printf("energy in condenser is %.e F",C0)
printf("\n energy in dielectric is %.1e J",E)
//answer in the book is wrong 
