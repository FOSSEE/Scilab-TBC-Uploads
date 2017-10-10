//Example 2_6_u2
clc();
clear;
//To calculate the fermi energy level
h=4.14*10^-15      //units in m^2 kg s^-1
n=8.49*10^28          //units in m^-3
m=9.1*10^-31       //units in Kgs
Ef=(h^2*(3*n)^0.666)/(8*m*(%pi)^0.666)        //units in J
Ef=Ef*1.67*10^-19       //units in eV
printf("Fermi energy for copper is Ef=%.2f eV",Ef)
