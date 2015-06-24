// Example 18.4, page no-462
clear
clc
N= 2.7*10^25//atoms m^-3
alfe=0.35*10^-40 //F m^2
eps=8.854*10^-12
epsr=(1+(2*N*alfe)/(3*eps))/(1-(N*alfe)/(3*eps))
printf("The dielectric constant of Ne gas is %.8f",epsr)
