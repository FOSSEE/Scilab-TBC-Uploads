// Example 18.6, page no-463
clear
clc
N=2.7*10^25//m^-3
d=0.384*10^-9//m
eps=8.854*10^-12
alfe=4*%pi*eps*d^3
epsr=(1+(2*N*alfe)/(3*eps))/(1-(N*alfe)/(3*eps))
printf("The dielectric constant of Ar  is %.8f",epsr)
