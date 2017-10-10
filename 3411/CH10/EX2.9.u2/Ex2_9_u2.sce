//Example 2_9_u2
clc();
clear;
//To calculate the fermi energy and fermi factor
ve=4*3        //No of Valence electrons
v=4.05*10^-10             //units in meter^3
n=ve/v^3     //units in meter^-3
h=4.14*10^-15           //units in eV sec
m=9.1*10^-31                   //units in Kgs
Ef=(h^2*(3*n)^0.666)/(8*m*(%pi)^0.666)        //units in J
Ef=Ef*1.67*10^-19       //units in eV
printf("Fermi energy is Ef=%.2f eV",Ef)
e_ef=0.1      //units in eV
kb=8.62*10^-5            //units in eV/K    
t=300        //units in kelvin
fE=1/(1+exp((e_ef)/(kb*t)))
printf("\nFermi factor f(E) is %.4f",fE)
