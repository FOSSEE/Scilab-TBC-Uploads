//Example number 3.16, Page number 52

clc;clear;
close;

//Variable declaration
N=2.303*16.65;
T=298;    //temperature(K)
Kb=8.625*10**-5;
//Calculation
E=2*N*Kb*T;      //energy required(eV)
//Result
printf("energy required is %.2f eV",E)
