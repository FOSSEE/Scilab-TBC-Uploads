//clc();
clear;
//To compute the polarisation
A=6.45*10^-4;         //area of capacitor plates in m^2
d=2*10^-3;            //capacitor plates seperation in m
V=12;                 //potential in V
epsilonr=5.0;         //dielectric constant
N=6.023*10^23;        //avagadro number in mol inverse
epsilon0=8.85*10^-12;
alphae=(epsilon0*(epsilonr-1))/N;
printf("polarisation in Fm^2 is ");
disp(alphae);

//answer in book is wrong
