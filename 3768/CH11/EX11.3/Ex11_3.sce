//Example number 11.3, Page number 246

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(coulomb)
E2_E1=3*e;    //energy gap(J)
Kb=1.38*10**-23;    //boltzmann constant(J/K)
T=323;    //temperature(K)
//Calculation
n=exp(-E2_E1/(Kb*T));    //ratio in higher and lower energy
//Result
printf("ratio in higher and lower energy is %.4e",n)
//answer given in the book is wrong
