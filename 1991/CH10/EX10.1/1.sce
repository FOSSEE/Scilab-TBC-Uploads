clc
clear
//input
h=6.6*10^-34 //plancks constant
c=3*10^8 //velocity of light
e1=12.34//excited state
e2=14.19//ground state
//calculation
l=(h*c)/((e2-e1)*1.6*10^-19)//conservation of energy and plancks theory
//output
printf("the wavelength is %3.3e m",l)
