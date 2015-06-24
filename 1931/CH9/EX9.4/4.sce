clc
clear
//INPUT DATA
Vf=0.86*10^6//The femi energy of electons in the metal in m/sec
m=9.11*10^-31//mass of electon in Kg
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
Ef=((1/2)*m*Vf^2)/10^-19//The fermi energy in a metal in J*10^-19
Tf=(Ef*10^-19/KB)/10^3//The fermi temperature in a metal in K*10^3

//OUTPUT
printf('The fermi energy in a metal is %3.4f*10^-19 J \n The fermi temperature in a metal is %3.2f*10^3 K',Ef,Tf)
