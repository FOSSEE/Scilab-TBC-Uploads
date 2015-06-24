clc
clear
//INPUT DATA
d=5*10^28//density of silicon atom in atoms/m^3
nd=2.5*10^7//donor concentration in 1 atom per si atom
T=300//Temperature in K
Eg=1.1*1.6*10^-19//Eg for silicon in eV
kb=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec

//CALCULATION
Nd=(d/nd)//The donor concentration in atoms/m^3
Ef=((Eg/2)+(kb*T*(log(Nd/(2*((2*3.14*m*kb*T)/h^2)^(3/2))))))/10^-20//The position of fermi level at 300K in Joule*10^-20

//OUTPUT
printf('The position of fermi level is %3.4f*10^-20 Joule',Ef)

