clc
clear
//INPUT DATA
Ef=3.2*1.6*10^-19//The fermi energy in a metal in J
m=9.11*10^-31//mass of electon in Kg
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
Tf=(Ef/KB)/10^3//The fermi temparature for sodium in K*10^6
Vf=(sqrt((2*Ef)/m))/10^6//The fermi velocity fo conducting electron in aluminium in ms^-1*10^6

//OUTPUT
printf('The fermi temparature for sodium is %3.2f*10^3 K \n The fermi velocity fo conducting electron in aluminium is %3.4f*10^6 ms^-1',Tf,Vf)
