clc
clear
//Input data
T=250+273//Temperature in K
l=(5900*10^-10)//Wavelength of sodium D line in m
h=6.625*10^-34//Plancks constant in J.s
e=(1.602*10^-19)//Charge of electrons in Columbs
c=(3*10^8)//Velocity of light in m/s
k=(1.38*10^-23)//Boltzmann constant in J/K

//Calculations
N=exp((-h*c)/(k*T*l))/10^-21//The ratio between the atoms in the first excited state and the ground state *10^-21

//Output
printf('The ratio between the atoms in the first excited state and the ground state is %3.3f*10^-21',N)
