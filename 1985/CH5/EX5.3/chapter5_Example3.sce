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
N=(1/(exp((h*c)/(k*T*l))-1))/10^-21//The ratio between the stimulated emission and the spontaneous emission *10^-21

//Output
printf('The ratio between the stimulated emission and the spontaneous emission is %3.5f*10^-21',N)
