//Example 2_6_u2
clc();
clear;
//To calculate the fermi energy level
h=4.14*10^-15
n=8.49*10^28
m=9.1*10^-31
Ef=(h^2*(3*n)^0.666)/(8*m*(%pi)^0.666)        //units in J
Ef=Ef*1.67*10^-19       //units in eV
printf("Fermi energy for copper is Ef=%.2f eV",Ef)
