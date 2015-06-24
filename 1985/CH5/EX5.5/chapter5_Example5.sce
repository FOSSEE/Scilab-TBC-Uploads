clc
clear
//Input data
l=5000*10^-10//Wavelength of the incident light in m
T=300//Temperature in K
h=6.625*10^-34//Plancks constant in J.s
e=(1.602*10^-19)//Charge of electrons in Columbs
c=(3*10^8)//Velocity of light in m/s
k=(1.38*10^-23)//Boltzmann constant in J/K

//Calculations
v=(c/l)//Frequency of the incident light in Hz
N=(1/(exp((h*c)/(k*T*l))-1))/10^-42//The ratio between the stimulated emission and the spontaneous emission*10^-42

//Output
printf('The ratio of stimulated emission to the spontaneous emission is %3.4f*10^-42 \n This shows that the spontantaneous emission is more predominant than that of the stimulated emission. For stimulating emission, N2>>N1 should exist.\n  Therefore, there is no amplification possibility. \n But, subsequent development in maintaining population inversion by pumping the atoms from lower level to higher level optically or electronically led to the discovery of lasers.',N)
