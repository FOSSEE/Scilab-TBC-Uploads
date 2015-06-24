// Example 4.1, page no-92
clear
clc
R=2.81*10^-10 //m
e=1.6*10^-19
eps=8.854*10^-12
U=-(e^2)/(4*%pi*eps*R)
printf("The Coulomb interatomic energy is %.2f eV",U*10^19/1.6)
